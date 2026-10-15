###### Class com.google.android.gms.internal.ads.zzfwd (com.google.android.gms.internal.ads.zzfwd)
.class final Lcom/google/android/gms/internal/ads/zzfwd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwe;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzgdy;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzgcu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzgcu;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwd;->a:Lcom/google/android/gms/internal/ads/zzgdy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwd;->b:Lcom/google/android/gms/internal/ads/zzgcu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwd;->a:Lcom/google/android/gms/internal/ads/zzgdy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwd;->a:Lcom/google/android/gms/internal/ads/zzgdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcu;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzfvy;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwd;->a:Lcom/google/android/gms/internal/ads/zzgdy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwd;->b:Lcom/google/android/gms/internal/ads/zzgcu;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfxd;-><init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/lang/Class;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception p1

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwd;->b:Lcom/google/android/gms/internal/ads/zzgcu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfvy;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwd;->a:Lcom/google/android/gms/internal/ads/zzgdy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwd;->b:Lcom/google/android/gms/internal/ads/zzgcu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgcu;->g()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxd;-><init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/lang/Class;)V

    return-object v0
.end method
