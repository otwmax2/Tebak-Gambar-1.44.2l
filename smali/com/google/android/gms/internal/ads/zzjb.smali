###### Class com.google.android.gms.internal.ads.zzjb (com.google.android.gms.internal.ads.zzjb)
.class final Lcom/google/android/gms/internal/ads/zzjb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjv;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/zzcn;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcn;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjb;->b:Lcom/google/android/gms/internal/ads/zzcn;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzjb;Lcom/google/android/gms/internal/ads/zzcn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjb;->b:Lcom/google/android/gms/internal/ads/zzcn;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjb;->b:Lcom/google/android/gms/internal/ads/zzcn;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjb;->a:Ljava/lang/Object;

    return-object v0
.end method
