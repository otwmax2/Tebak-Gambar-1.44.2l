###### Class com.google.android.gms.internal.ads.zzfel (com.google.android.gms.internal.ads.zzfel)
.class final Lcom/google/android/gms/internal/ads/zzfel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfen;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzfec;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfen;Lcom/google/android/gms/internal/ads/zzfec;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfel;->a:Lcom/google/android/gms/internal/ads/zzfen;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfel;->b:Lcom/google/android/gms/internal/ads/zzfec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfel;->a:Lcom/google/android/gms/internal/ads/zzfen;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfel;->b:Lcom/google/android/gms/internal/ads/zzfec;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfec;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfec;

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfec;->y0(Z)Lcom/google/android/gms/internal/ads/zzfec;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfen;->a(Lcom/google/android/gms/internal/ads/zzfec;)Lcom/google/android/gms/internal/ads/zzfen;

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
