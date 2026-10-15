###### Class com.google.android.gms.internal.ads.zzdyf (com.google.android.gms.internal.ads.zzdyf)
.class public final Lcom/google/android/gms/internal/ads/zzdyf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lcom/google/android/gms/internal/ads/zzbtq;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbtq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyf;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyf;->b:Lcom/google/android/gms/internal/ads/zzbtq;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzdyf;)Lcom/google/android/gms/internal/ads/zzbtq;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyf;->b:Lcom/google/android/gms/internal/ads/zzbtq;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzdyf;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyf;->a:Lorg/json/JSONObject;

    return-object p0
.end method
