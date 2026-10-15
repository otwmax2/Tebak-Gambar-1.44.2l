###### Class com.google.android.gms.internal.ads.zzges (com.google.android.gms.internal.ads.zzges)
.class public final Lcom/google/android/gms/internal/ads/zzges;
.super Lcom/google/android/gms/internal/ads/zzgcu;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final d:Lcom/google/android/gms/internal/ads/zzgdr;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgep;->a:Lcom/google/android/gms/internal/ads/zzgep;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgeo;

    const-class v2, Lcom/google/android/gms/internal/ads/zzgfd;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdr;->b(Lcom/google/android/gms/internal/ads/zzgdp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzges;->d:Lcom/google/android/gms/internal/ads/zzgdr;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgds;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgeq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzfws;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgeq;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/zzggw;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzgds;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzghc;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzges;->n(Lcom/google/android/gms/internal/ads/zzghc;)V

    return-void
.end method

.method static bridge synthetic l(I)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzges;->o(I)V

    return-void
.end method

.method public static m(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzges;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzges;-><init>()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfc;->a()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgde;->a()Lcom/google/android/gms/internal/ads/zzgde;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzges;->d:Lcom/google/android/gms/internal/ads/zzgdr;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgde;->e(Lcom/google/android/gms/internal/ads/zzgdr;)V

    return-void
.end method

.method private static n(Lcom/google/android/gms/internal/ads/zzghc;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghc;->I()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_19

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghc;->I()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_11

    return-void

    .line 3
    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too long"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_19
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static o(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    return-void

    .line 1
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgct;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzggz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzger;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzger;-><init>(Lcom/google/android/gms/internal/ads/zzges;Ljava/lang/Class;)V

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzggw;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzggw;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzggw;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggw;->I()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgog;->b(II)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggw;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzges;->o(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzggw;->M()Lcom/google/android/gms/internal/ads/zzghc;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzges;->n(Lcom/google/android/gms/internal/ads/zzghc;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzgep (com.google.android.gms.internal.ads.zzgep)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzgep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdp;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzgep;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgep;->a:Lcom/google/android/gms/internal/ads/zzgep;

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

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgeo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzggh;-><init>(Lcom/google/android/gms/internal/ads/zzgeo;)V

    return-object v0
.end method
