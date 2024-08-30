<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Symfony\Component\HttpKernel\Profiler\Profile;

class ProductReview extends Model
{
    use HasFactory;


    protected $fillable = [
        'product_id',
        'customer_id',
        'rating',
        'description',
    ];

    public static function createOrUpdate(array $array, mixed $input)
    {
    }

    public function profile(): BelongsTo{
            return $this->belongsTo(CustomerProfile::class,'customer_id');
        }


}
