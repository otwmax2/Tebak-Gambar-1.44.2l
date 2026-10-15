###### Class com.google.android.gms.internal.ads.zzfwb (com.google.android.gms.internal.ads.zzfwb)
.class final Lcom/google/android/gms/internal/ads/zzfwb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwe;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfvy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwb;->a:Lcom/google/android/gms/internal/ads/zzfvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwb;->a:Lcom/google/android/gms/internal/ads/zzfvy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwb;->a:Lcom/google/android/gms/internal/ads/zzfvy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfvy;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzfvy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwb;->a:Lcom/google/android/gms/internal/ads/zzfvy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfvy;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwb;->a:Lcom/google/android/gms/internal/ads/zzfvy;

    return-object p1

    .line 3
    :cond_f
    new-instance p1, Ljava/lang/InternalError;

    const-string v0, "This should never be called, as we always first check supportedPrimitives."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Ljava/lang/Class;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfvy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwb;->a:Lcom/google/android/gms/internal/ads/zzfvy;

    return-object v0
.end method
