###### Class com.google.android.gms.internal.ads.zzdfj (com.google.android.gms.internal.ads.zzdfj)
.class public final Lcom/google/android/gms/internal/ads/zzdfj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfj;->a:Lcom/google/android/gms/internal/ads/zzdfh;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfj;->a:Lcom/google/android/gms/internal/ads/zzdfh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfh;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfj;->a:Lcom/google/android/gms/internal/ads/zzdfh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfh;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
