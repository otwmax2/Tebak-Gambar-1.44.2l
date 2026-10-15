###### Class com.google.android.gms.internal.ads.zzcuf (com.google.android.gms.internal.ads.zzcuf)
.class public final Lcom/google/android/gms/internal/ads/zzcuf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzctz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzctz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuf;->a:Lcom/google/android/gms/internal/ads/zzctz;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzctz;)Lcom/google/android/gms/internal/ads/zzeyx;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzctz;->f()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzeyx;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->a:Lcom/google/android/gms/internal/ads/zzctz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctz;->f()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->a:Lcom/google/android/gms/internal/ads/zzctz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctz;->f()Lcom/google/android/gms/internal/ads/zzeyx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
