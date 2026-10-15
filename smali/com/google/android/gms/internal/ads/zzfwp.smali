###### Class com.google.android.gms.internal.ads.zzfwp (com.google.android.gms.internal.ads.zzfwp)
.class public final Lcom/google/android/gms/internal/ads/zzfwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgll;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/internal/ads/zzggl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgll;Ljava/util/List;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwp;->a:Lcom/google/android/gms/internal/ads/zzgll;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwp;->b:Ljava/util/List;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzggl;->b:Lcom/google/android/gms/internal/ads/zzggl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwp;->c:Lcom/google/android/gms/internal/ads/zzggl;

    return-void
.end method

.method static final a(Lcom/google/android/gms/internal/ads/zzgll;)Lcom/google/android/gms/internal/ads/zzfwp;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgll;->I()I

    move-result v0

    if-lez v0, :cond_12

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfwp;->g(Lcom/google/android/gms/internal/ads/zzgll;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwp;

    .line 3
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfwp;-><init>(Lcom/google/android/gms/internal/ads/zzgll;Ljava/util/List;)V

    return-object v1

    .line 4
    :cond_12
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lcom/google/android/gms/internal/ads/zzfwh;)Lcom/google/android/gms/internal/ads/zzfwp;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwh;->a()Lcom/google/android/gms/internal/ads/zzgld;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgea;->a(Lcom/google/android/gms/internal/ads/zzgld;)Lcom/google/android/gms/internal/ads/zzgea;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgcx;-><init>(Lcom/google/android/gms/internal/ads/zzgea;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfwm;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwk;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfwk;-><init>(Lcom/google/android/gms/internal/ads/zzfwu;Lcom/google/android/gms/internal/ads/zzfwj;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwk;->d()Lcom/google/android/gms/internal/ads/zzfwk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwk;->e()Lcom/google/android/gms/internal/ads/zzfwk;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfwm;->a(Lcom/google/android/gms/internal/ads/zzfwk;)Lcom/google/android/gms/internal/ads/zzfwm;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwm;->b()Lcom/google/android/gms/internal/ads/zzfwp;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/google/android/gms/internal/ads/zzglk;)Lcom/google/android/gms/internal/ads/zzgdz;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzglk;->M()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgme;->s:Lcom/google/android/gms/internal/ads/zzgme;

    if-ne v1, v2, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    :goto_12
    :try_start_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgky;->N()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgky;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgky;->J()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzglk;->M()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object p0

    .line 7
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzgdz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgkx;Lcom/google/android/gms/internal/ads/zzgme;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object p0
    :try_end_32
    .catch Ljava/security/GeneralSecurityException; {:try_start_12 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgej;

    const-string v1, "Creating a protokey serialization failed"

    .line 8
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgej;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static f(Lcom/google/android/gms/internal/ads/zzglk;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfxf;->g(Lcom/google/android/gms/internal/ads/zzgky;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No key manager found for key type "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 3
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, " not supported by key manager of type "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    .line 4
    :cond_23
    throw p0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return-object p0
.end method

.method private static g(Lcom/google/android/gms/internal/ads/zzgll;)Ljava/util/List;
    .registers 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgll;->I()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgll;->P()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzglk;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v6

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfwp;->e(Lcom/google/android/gms/internal/ads/zzglk;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v3

    .line 5
    :try_start_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdf;->b()Lcom/google/android/gms/internal/ads/zzgdf;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxg;->a()Lcom/google/android/gms/internal/ads/zzfxg;

    move-result-object v5

    .line 6
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgdf;->a(Lcom/google/android/gms/internal/ads/zzgdz;Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfvx;

    move-result-object v4

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfwo;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzglk;->R()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_50

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4d

    const/4 v5, 0x3

    if-ne v2, v5, :cond_45

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfwg;->d:Lcom/google/android/gms/internal/ads/zzfwg;

    goto :goto_52

    .line 9
    :cond_45
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Unknown key status"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_4d
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfwg;->c:Lcom/google/android/gms/internal/ads/zzfwg;

    goto :goto_52

    .line 11
    :cond_50
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfwg;->b:Lcom/google/android/gms/internal/ads/zzfwg;

    :goto_52
    move-object v5, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgll;->J()I

    move-result v2

    if-ne v6, v2, :cond_5b

    const/4 v7, 0x1

    goto :goto_5d

    :cond_5b
    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_5d
    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfwo;-><init>(Lcom/google/android/gms/internal/ads/zzfvx;Lcom/google/android/gms/internal/ads/zzfwg;IZLcom/google/android/gms/internal/ads/zzfwn;)V

    .line 12
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/security/GeneralSecurityException; {:try_start_25 .. :try_end_65} :catch_66

    goto :goto_11

    :catch_66
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 14
    :cond_6b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Lcom/google/android/gms/internal/ads/zzfvx;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfxf;->f(Lcom/google/android/gms/internal/ads/zzfvx;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final c()Lcom/google/android/gms/internal/ads/zzgll;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwp;->a:Lcom/google/android/gms/internal/ads/zzgll;

    return-object v0
.end method

.method public final d(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxf;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwp;->a:Lcom/google/android/gms/internal/ads/zzgll;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfxh;->b(Lcom/google/android/gms/internal/ads/zzgll;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfww;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfwv;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfwp;->c:Lcom/google/android/gms/internal/ads/zzggl;

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfww;->c(Lcom/google/android/gms/internal/ads/zzggl;)Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v3, 0x0

    :goto_17
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfwp;->a:Lcom/google/android/gms/internal/ads/zzgll;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgll;->I()I

    move-result v4

    if-ge v3, v4, :cond_60

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfwp;->a:Lcom/google/android/gms/internal/ads/zzgll;

    .line 7
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzgll;->L(I)Lcom/google/android/gms/internal/ads/zzglk;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzglk;->R()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5d

    .line 9
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzfwp;->f(Lcom/google/android/gms/internal/ads/zzglk;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfwp;->b:Ljava/util/List;

    .line 10
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_49

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfwp;->b:Ljava/util/List;

    .line 11
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfwo;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfwo;->a()Lcom/google/android/gms/internal/ads/zzfvx;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzfwp;->h(Lcom/google/android/gms/internal/ads/zzfvx;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_4a

    :cond_49
    move-object v6, v2

    .line 12
    :goto_4a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfwp;->a:Lcom/google/android/gms/internal/ads/zzgll;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgll;->J()I

    move-result v8

    if-ne v7, v8, :cond_5a

    .line 13
    invoke-virtual {v1, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzfww;->b(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzglk;)Lcom/google/android/gms/internal/ads/zzfww;

    goto :goto_5d

    .line 14
    :cond_5a
    invoke-virtual {v1, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzfww;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzglk;)Lcom/google/android/gms/internal/ads/zzfww;

    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 15
    :cond_60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfww;->d()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfxf;->k(Lcom/google/android/gms/internal/ads/zzfxb;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_69
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No wrapper found for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :goto_79
    throw v0

    :goto_7a
    goto :goto_79
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwp;->a:Lcom/google/android/gms/internal/ads/zzgll;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxh;->a(Lcom/google/android/gms/internal/ads/zzgll;)Lcom/google/android/gms/internal/ads/zzglq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
