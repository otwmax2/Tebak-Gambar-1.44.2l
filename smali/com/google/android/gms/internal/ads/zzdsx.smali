###### Class com.google.android.gms.internal.ads.zzdsx (com.google.android.gms.internal.ads.zzdsx)
.class final Lcom/google/android/gms/internal/ads/zzdsx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzdsz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsz;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsx;->b:Lcom/google/android/gms/internal/ads/zzdsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsx;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrt;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrt;->c()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsx;->b:Lcom/google/android/gms/internal/ads/zzdsz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsz;->Sa(Lcom/google/android/gms/internal/ads/zzdsz;)Lcom/google/android/gms/internal/ads/zzdsn;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsx;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdsn;->f(Ljava/lang/String;)V

    return-void
.end method
