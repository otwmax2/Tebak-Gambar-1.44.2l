###### Class com.google.android.gms.internal.ads.zzgbz (com.google.android.gms.internal.ads.zzgbz)
.class public final Lcom/google/android/gms/internal/ads/zzgbz;
.super Lcom/google/android/gms/internal/ads/zzgdy;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgds;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbx;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfvv;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbx;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzgkq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgkt;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgdy;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgds;)V

    return-void
.end method

.method static bridge synthetic k(IIII)Lcom/google/android/gms/internal/ads/zzgcs;
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkn;->I()Lcom/google/android/gms/internal/ads/zzgkm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgkm;->q(I)Lcom/google/android/gms/internal/ads/zzgkm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkm;->p(I)Lcom/google/android/gms/internal/ads/zzgkm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgkm;->o(I)Lcom/google/android/gms/internal/ads/zzgkm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgkn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgcs;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkk;->I()Lcom/google/android/gms/internal/ads/zzgkj;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgkj;->o(Lcom/google/android/gms/internal/ads/zzgkn;)Lcom/google/android/gms/internal/ads/zzgkj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgkk;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzgcs;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgct;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzgkk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgby;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgby;-><init>(Lcom/google/android/gms/internal/ads/zzgbz;Ljava/lang/Class;)V

    return-object v1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzgkx;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkx;->r:Lcom/google/android/gms/internal/ads/zzgkx;

    return-object v0
.end method

.method public final synthetic c(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgkq;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgkq;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    return-object v0
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkq;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->j()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkq;->R()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkq;->I()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgog;->b(II)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkq;->M()Lcom/google/android/gms/internal/ads/zzgkt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkt;->J()Lcom/google/android/gms/internal/ads/zzgkn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgcc;->a(Lcom/google/android/gms/internal/ads/zzgkn;)V

    return-void

    .line 6
    :cond_26
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing public key."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Private key is empty."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
