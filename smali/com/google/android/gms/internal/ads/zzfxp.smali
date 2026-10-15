###### Class com.google.android.gms.internal.ads.zzfxp (com.google.android.gms.internal.ads.zzfxp)
.class final Lcom/google/android/gms/internal/ads/zzfxp;
.super Lcom/google/android/gms/internal/ads/zzgct;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/zzfxq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfxq;Ljava/lang/Class;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxp;->b:Lcom/google/android/gms/internal/ads/zzfxq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgct;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxt;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxt;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghi;->L()Lcom/google/android/gms/internal/ads/zzgho;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxs;->g(Lcom/google/android/gms/internal/ads/zzgho;)Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfo;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgfo;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgcu;->a()Lcom/google/android/gms/internal/ads/zzgct;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghi;->M()Lcom/google/android/gms/internal/ads/zzgkc;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgct;->a(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgrw;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghf;->J()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzghe;->o(Lcom/google/android/gms/internal/ads/zzghl;)Lcom/google/android/gms/internal/ads/zzghe;

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjz;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzghe;->p(Lcom/google/android/gms/internal/ads/zzgjz;)Lcom/google/android/gms/internal/ads/zzghe;

    const/4 p1, 0x0

    .line 10
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzghe;->q(I)Lcom/google/android/gms/internal/ads/zzghe;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzghf;

    return-object p1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzghi;->K(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0x10

    const/16 v3, 0x20

    const/4 v5, 0x5

    const/4 v6, 0x1

    move v1, v4

    move v2, v4

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfxq;->k(IIIIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x10

    const/16 v5, 0x20

    const/4 v7, 0x5

    const/4 v8, 0x3

    move v3, v6

    move v4, v6

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfxq;->k(IIIIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256_RAW"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x20

    const/16 v4, 0x10

    const/4 v8, 0x1

    move v3, v6

    move v5, v6

    .line 6
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfxq;->k(IIIIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    .line 8
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfxq;->k(IIIIII)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxt;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxt;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcu;->a()Lcom/google/android/gms/internal/ads/zzgct;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghi;->L()Lcom/google/android/gms/internal/ads/zzgho;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfxs;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxs;->f(Lcom/google/android/gms/internal/ads/zzgho;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfo;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfo;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcu;->a()Lcom/google/android/gms/internal/ads/zzgct;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghi;->M()Lcom/google/android/gms/internal/ads/zzgkc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgct;->d(Lcom/google/android/gms/internal/ads/zzgrw;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghi;->L()Lcom/google/android/gms/internal/ads/zzgho;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgho;->I()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgog;->a(I)V

    return-void
.end method
