###### Class com.google.android.gms.internal.ads.zzfek (com.google.android.gms.internal.ads.zzfek)
.class final Lcom/google/android/gms/internal/ads/zzfek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfen;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzfec;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfen;Lcom/google/android/gms/internal/ads/zzfec;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfek;->a:Lcom/google/android/gms/internal/ads/zzfen;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfek;->b:Lcom/google/android/gms/internal/ads/zzfec;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfek;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfek;->b:Lcom/google/android/gms/internal/ads/zzfec;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfec;->h()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfek;->a:Lcom/google/android/gms/internal/ads/zzfen;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfec;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfec;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfec;->y0(Z)Lcom/google/android/gms/internal/ads/zzfec;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfen;->a(Lcom/google/android/gms/internal/ads/zzfec;)Lcom/google/android/gms/internal/ads/zzfen;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfek;->c:Z

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfek;->a:Lcom/google/android/gms/internal/ads/zzfen;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfen;->g()V

    :cond_1d
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfek;->a:Lcom/google/android/gms/internal/ads/zzfen;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfek;->b:Lcom/google/android/gms/internal/ads/zzfec;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfec;->y0(Z)Lcom/google/android/gms/internal/ads/zzfec;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfen;->a(Lcom/google/android/gms/internal/ads/zzfec;)Lcom/google/android/gms/internal/ads/zzfen;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfek;->c:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfek;->a:Lcom/google/android/gms/internal/ads/zzfen;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfen;->g()V

    :cond_14
    return-void
.end method
