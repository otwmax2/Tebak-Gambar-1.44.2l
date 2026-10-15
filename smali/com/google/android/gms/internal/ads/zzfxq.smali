###### Class com.google.android.gms.internal.ads.zzfxq (com.google.android.gms.internal.ads.zzfxq)
.class public final Lcom/google/android/gms/internal/ads/zzfxq;
.super Lcom/google/android/gms/internal/ads/zzgcu;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgds;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfxo;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfxo;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzghf;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgds;)V

    return-void
.end method

.method static bridge synthetic k(IIIIII)Lcom/google/android/gms/internal/ads/zzgcs;
    .registers 7

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgcs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgho;->J()Lcom/google/android/gms/internal/ads/zzghn;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghr;->J()Lcom/google/android/gms/internal/ads/zzghq;

    move-result-object p4

    const/16 v0, 0x10

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzghq;->o(I)Lcom/google/android/gms/internal/ads/zzghq;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzghr;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzghn;->p(Lcom/google/android/gms/internal/ads/zzghr;)Lcom/google/android/gms/internal/ads/zzghn;

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzghn;->o(I)Lcom/google/android/gms/internal/ads/zzghn;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgho;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkc;->J()Lcom/google/android/gms/internal/ads/zzgkb;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkf;->J()Lcom/google/android/gms/internal/ads/zzgke;

    move-result-object p4

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzgke;->p(I)Lcom/google/android/gms/internal/ads/zzgke;

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzgke;->o(I)Lcom/google/android/gms/internal/ads/zzgke;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgkb;->p(Lcom/google/android/gms/internal/ads/zzgkf;)Lcom/google/android/gms/internal/ads/zzgkb;

    const/16 p3, 0x20

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgkb;->o(I)Lcom/google/android/gms/internal/ads/zzgkb;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgkc;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghi;->I()Lcom/google/android/gms/internal/ads/zzghh;

    move-result-object p3

    .line 10
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzghh;->o(Lcom/google/android/gms/internal/ads/zzgho;)Lcom/google/android/gms/internal/ads/zzghh;

    .line 11
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzghh;->p(Lcom/google/android/gms/internal/ads/zzgkc;)Lcom/google/android/gms/internal/ads/zzghh;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzghi;

    invoke-direct {p1, p0, p5}, Lcom/google/android/gms/internal/ads/zzgcs;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgct;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzghi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfxp;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfxp;-><init>(Lcom/google/android/gms/internal/ads/zzfxq;Ljava/lang/Class;)V

    return-object v1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzgkx;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkx;->q:Lcom/google/android/gms/internal/ads/zzgkx;

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzghf;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzghf;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghf;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghf;->I()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgog;->b(II)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxt;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxt;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghf;->M()Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxt;->l(Lcom/google/android/gms/internal/ads/zzghl;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfo;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfo;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghf;->N()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgfo;->m(Lcom/google/android/gms/internal/ads/zzgjz;)V

    return-void
.end method

.method public final f()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
