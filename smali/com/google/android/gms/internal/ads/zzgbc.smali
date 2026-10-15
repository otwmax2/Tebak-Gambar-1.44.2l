###### Class com.google.android.gms.internal.ads.zzgbc (com.google.android.gms.internal.ads.zzgbc)
.class public final Lcom/google/android/gms/internal/ads/zzgbc;
.super Lcom/google/android/gms/internal/ads/zzgdy;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbc;->e:[B

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgds;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgba;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfvv;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgba;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzgjm;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgjp;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgdy;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgds;)V

    return-void
.end method

.method static bridge synthetic k()[B
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgbc;->e:[B

    return-object v0
.end method

.method static bridge synthetic l(IIILcom/google/android/gms/internal/ads/zzfwh;[BI)Lcom/google/android/gms/internal/ads/zzgcs;
    .registers 8

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgcs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjg;->I()Lcom/google/android/gms/internal/ads/zzgjf;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjs;->I()Lcom/google/android/gms/internal/ads/zzgjr;

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjr;->p(I)Lcom/google/android/gms/internal/ads/zzgjr;

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjr;->q(I)Lcom/google/android/gms/internal/ads/zzgjr;

    .line 5
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzgjr;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgjr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzgjs;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgld;->I()Lcom/google/android/gms/internal/ads/zzglc;

    move-result-object v0

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfwh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzglc;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzglc;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfwh;->c()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzglc;->q(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzglc;

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfwh;->d()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_4c

    const/4 v1, 0x1

    if-eq p3, v1, :cond_49

    const/4 v1, 0x2

    if-eq p3, v1, :cond_46

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgme;->t:Lcom/google/android/gms/internal/ads/zzgme;

    goto :goto_4e

    .line 12
    :cond_46
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgme;->s:Lcom/google/android/gms/internal/ads/zzgme;

    goto :goto_4e

    .line 13
    :cond_49
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgme;->r:Lcom/google/android/gms/internal/ads/zzgme;

    goto :goto_4e

    .line 14
    :cond_4c
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgme;->q:Lcom/google/android/gms/internal/ads/zzgme;

    .line 15
    :goto_4e
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzglc;->o(Lcom/google/android/gms/internal/ads/zzgme;)Lcom/google/android/gms/internal/ads/zzglc;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgld;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjd;->I()Lcom/google/android/gms/internal/ads/zzgjc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzgjc;->o(Lcom/google/android/gms/internal/ads/zzgld;)Lcom/google/android/gms/internal/ads/zzgjc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgjd;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjj;->J()Lcom/google/android/gms/internal/ads/zzgji;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzgji;->p(Lcom/google/android/gms/internal/ads/zzgjs;)Lcom/google/android/gms/internal/ads/zzgji;

    .line 20
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzgji;->o(Lcom/google/android/gms/internal/ads/zzgjd;)Lcom/google/android/gms/internal/ads/zzgji;

    .line 21
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgji;->q(I)Lcom/google/android/gms/internal/ads/zzgji;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgjj;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjf;->o(Lcom/google/android/gms/internal/ads/zzgjj;)Lcom/google/android/gms/internal/ads/zzgjf;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjg;

    invoke-direct {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzgcs;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgct;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzgjg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbb;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgbb;-><init>(Lcom/google/android/gms/internal/ads/zzgbc;Ljava/lang/Class;)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjm;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgjm;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjm;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjm;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->j()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjm;->I()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgog;->b(II)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjm;->M()Lcom/google/android/gms/internal/ads/zzgjp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjp;->J()Lcom/google/android/gms/internal/ads/zzgjj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbk;->a(Lcom/google/android/gms/internal/ads/zzgjj;)V

    return-void

    .line 5
    :cond_20
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
