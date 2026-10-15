###### Class com.google.android.gms.internal.ads.zzgfo (com.google.android.gms.internal.ads.zzgfo)
.class public final Lcom/google/android/gms/internal/ads/zzgfo;
.super Lcom/google/android/gms/internal/ads/zzgcu;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final d:Lcom/google/android/gms/internal/ads/zzgdr;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgfl;->a:Lcom/google/android/gms/internal/ads/zzgfl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgfk;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfd;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdr;->b(Lcom/google/android/gms/internal/ads/zzgdp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfo;->d:Lcom/google/android/gms/internal/ads/zzgdr;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgds;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfm;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfws;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfm;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzgjz;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgds;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzgkf;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgfo;->o(Lcom/google/android/gms/internal/ads/zzgkf;)V

    return-void
.end method

.method public static l(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgfo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgfo;-><init>()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfz;->a()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgde;->a()Lcom/google/android/gms/internal/ads/zzgde;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgfo;->d:Lcom/google/android/gms/internal/ads/zzgdr;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgde;->e(Lcom/google/android/gms/internal/ads/zzgdr;)V

    return-void
.end method

.method public static final m(Lcom/google/android/gms/internal/ads/zzgjz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjz;->I()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgog;->b(II)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjz;->O()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjz;->N()Lcom/google/android/gms/internal/ads/zzgkf;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgfo;->o(Lcom/google/android/gms/internal/ads/zzgkf;)V

    return-void

    .line 4
    :cond_1c
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic n(IIII)Lcom/google/android/gms/internal/ads/zzgcs;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcs;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkc;->J()Lcom/google/android/gms/internal/ads/zzgkb;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkf;->J()Lcom/google/android/gms/internal/ads/zzgke;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzgke;->p(I)Lcom/google/android/gms/internal/ads/zzgke;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgke;->o(I)Lcom/google/android/gms/internal/ads/zzgke;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgkf;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgkb;->p(Lcom/google/android/gms/internal/ads/zzgkf;)Lcom/google/android/gms/internal/ads/zzgkb;

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzgkb;->o(I)Lcom/google/android/gms/internal/ads/zzgkb;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgkc;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzgcs;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static o(Lcom/google/android/gms/internal/ads/zzgkf;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->I()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_72

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_63

    const/4 v1, 0x2

    if-eq v0, v1, :cond_54

    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    const/4 v1, 0x4

    if-eq v0, v1, :cond_36

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2e

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->I()I

    move-result p0

    const/16 v0, 0x1c

    if-gt p0, v0, :cond_28

    goto :goto_6b

    .line 4
    :cond_28
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->I()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_3f

    goto :goto_6b

    .line 7
    :cond_3f
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->I()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_4e

    goto :goto_6b

    .line 9
    :cond_4e
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->I()I

    move-result p0

    const/16 v0, 0x30

    if-gt p0, v0, :cond_5d

    goto :goto_6b

    .line 11
    :cond_5d
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkf;->I()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_6c

    :goto_6b
    return-void

    .line 13
    :cond_6c
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_72
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgct;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzgkc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfn;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzgfn;-><init>(Lcom/google/android/gms/internal/ads/zzgfo;Ljava/lang/Class;)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjz;->M(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object v0
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgjz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgfo;->m(Lcom/google/android/gms/internal/ads/zzgjz;)V

    return-void
.end method

.method public final f()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzgfl (com.google.android.gms.internal.ads.zzgfl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzgfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzgfl;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfl;->a:Lcom/google/android/gms/internal/ads/zzgfl;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfvx;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggi;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgfk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzggi;-><init>(Lcom/google/android/gms/internal/ads/zzgfk;)V

    return-object v0
.end method
