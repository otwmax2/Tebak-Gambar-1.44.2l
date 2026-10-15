###### Class com.google.android.gms.internal.ads.zzgbl (com.google.android.gms.internal.ads.zzgbl)
.class final Lcom/google/android/gms/internal/ads/zzgbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgmy;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/ads/zzgid;

.field private d:Lcom/google/android/gms/internal/ads/zzghf;

.field private e:I

.field private f:Lcom/google/android/gms/internal/ads/zzgip;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgld;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgld;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbl;->a:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfxi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3
    :try_start_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgld;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgig;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgig;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxf;->d(Lcom/google/android/gms/internal/ads/zzgld;)Lcom/google/android/gms/internal/ads/zzgrw;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgid;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->c:Lcom/google/android/gms/internal/ads/zzgid;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgig;->I()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->b:I
    :try_end_2b
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_11 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_35
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfxi;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v1, :cond_72

    .line 10
    :try_start_3f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgld;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghi;->K(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxf;->d(Lcom/google/android/gms/internal/ads/zzgld;)Lcom/google/android/gms/internal/ads/zzgrw;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzghf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->d:Lcom/google/android/gms/internal/ads/zzghf;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghi;->L()Lcom/google/android/gms/internal/ads/zzgho;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgho;->I()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->e:I

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghi;->M()Lcom/google/android/gms/internal/ads/zzgkc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgkc;->I()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgbl;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgbl;->b:I
    :try_end_6a
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_3f .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    move-exception p1

    .line 15
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :cond_72
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 17
    :try_start_7a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgld;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgis;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgis;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxf;->d(Lcom/google/android/gms/internal/ads/zzgld;)Lcom/google/android/gms/internal/ads/zzgrw;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgip;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->f:Lcom/google/android/gms/internal/ads/zzgip;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgis;->I()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->b:I
    :try_end_94
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_7a .. :try_end_94} :catch_95

    return-void

    :catch_95
    move-exception p1

    .line 21
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_9c
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a0([B)Lcom/google/android/gms/internal/ads/zzgch;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfvo;

    array-length v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgbl;->b:I

    if-ne v1, v2, :cond_e5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->a:Ljava/lang/String;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfxi;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgid;->J()Lcom/google/android/gms/internal/ads/zzgic;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbl;->c:Lcom/google/android/gms/internal/ads/zzgid;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgqi;->i(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqi;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgbl;->b:I

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgpe;->L([BII)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgic;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgic;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgid;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgch;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbl;->a:Ljava/lang/String;

    .line 7
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfxf;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzgch;-><init>(Lcom/google/android/gms/internal/ads/zzfvo;)V

    return-object v1

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfxi;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->e:I

    .line 9
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgbl;->e:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgbl;->b:I

    .line 10
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghl;->J()Lcom/google/android/gms/internal/ads/zzghk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbl;->d:Lcom/google/android/gms/internal/ads/zzghf;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzghf;->M()Lcom/google/android/gms/internal/ads/zzghl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqi;->i(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqi;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzghk;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzghk;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzghl;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjz;->J()Lcom/google/android/gms/internal/ads/zzgjy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbl;->d:Lcom/google/android/gms/internal/ads/zzghf;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzghf;->N()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqi;->i(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqi;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgjy;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgjy;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghf;->J()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbl;->d:Lcom/google/android/gms/internal/ads/zzghf;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzghf;->I()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzghe;->q(I)Lcom/google/android/gms/internal/ads/zzghe;

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzghe;->o(Lcom/google/android/gms/internal/ads/zzghl;)Lcom/google/android/gms/internal/ads/zzghe;

    .line 22
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzghe;->p(Lcom/google/android/gms/internal/ads/zzgjz;)Lcom/google/android/gms/internal/ads/zzghe;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzghf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgch;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgbl;->a:Ljava/lang/String;

    .line 24
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfxf;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfvo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzgch;-><init>(Lcom/google/android/gms/internal/ads/zzfvo;)V

    return-object v1

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbl;->a:Ljava/lang/String;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgip;->J()Lcom/google/android/gms/internal/ads/zzgio;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->f:Lcom/google/android/gms/internal/ads/zzgip;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqi;->i(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqi;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->b:I

    .line 28
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgpe;->L([BII)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgio;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgio;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgip;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgch;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgbl;->a:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfvu;

    .line 30
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfxf;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfvu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgch;-><init>(Lcom/google/android/gms/internal/ads/zzfvu;)V

    return-object v0

    .line 31
    :cond_dd
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_e5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgbl;->b:I

    return v0
.end method
