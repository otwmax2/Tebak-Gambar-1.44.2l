###### Class com.google.android.gms.internal.ads.zzfzs (com.google.android.gms.internal.ads.zzfzs)
.class final Lcom/google/android/gms/internal/ads/zzfzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzgoj;

.field private static final b:Lcom/google/android/gms/internal/ads/zzgdn;

.field private static final c:Lcom/google/android/gms/internal/ads/zzgdj;

.field private static final d:Lcom/google/android/gms/internal/ads/zzgcr;

.field private static final e:Lcom/google/android/gms/internal/ads/zzgcn;

.field public static final synthetic f:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgdz;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgea;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgek;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfzs;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzo;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    const-class v4, Lcom/google/android/gms/internal/ads/zzfzn;

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->a(Lcom/google/android/gms/internal/ads/zzgdl;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdn;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfzs;->b:Lcom/google/android/gms/internal/ads/zzgdn;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzp;->a:Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgdj;->a(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfzs;->c:Lcom/google/android/gms/internal/ads/zzgdj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzq;->a:Lcom/google/android/gms/internal/ads/zzfzq;

    const-class v3, Lcom/google/android/gms/internal/ads/zzfzf;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgcr;->a(Lcom/google/android/gms/internal/ads/zzgcp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgcr;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfzs;->d:Lcom/google/android/gms/internal/ads/zzgcr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzr;->a:Lcom/google/android/gms/internal/ads/zzfzr;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgcn;->b(Lcom/google/android/gms/internal/ads/zzgcl;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgcn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzs;->e:Lcom/google/android/gms/internal/ads/zzgcn;

    return-void
.end method

.method public static a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdf;->b()Lcom/google/android/gms/internal/ads/zzgdf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzs;->b:Lcom/google/android/gms/internal/ads/zzgdn;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->f(Lcom/google/android/gms/internal/ads/zzgdn;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzs;->c:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->e(Lcom/google/android/gms/internal/ads/zzgdj;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzs;->d:Lcom/google/android/gms/internal/ads/zzgcr;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->d(Lcom/google/android/gms/internal/ads/zzgcr;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfzs;->e:Lcom/google/android/gms/internal/ads/zzgcn;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->c(Lcom/google/android/gms/internal/ads/zzgcn;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzo (com.google.android.gms.internal.ads.zzfzo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdl;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfzo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzo;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzp (com.google.android.gms.internal.ads.zzfzp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdh;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfzp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzp;->a:Lcom/google/android/gms/internal/ads/zzfzp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzq (com.google.android.gms.internal.ads.zzfzq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcp;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfzq;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzq;->a:Lcom/google/android/gms/internal/ads/zzfzq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfzr (com.google.android.gms.internal.ads.zzfzr)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcl;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfzr;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzr;->a:Lcom/google/android/gms/internal/ads/zzfzr;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzgeb;Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfvx;
    .registers 9

    sget v0, Lcom/google/android/gms/internal/ads/zzfzs;->f:I

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdz;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 2
    :try_start_11
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdz;->e()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgij;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgij;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgij;->I()I

    move-result v1

    if-nez v1, :cond_a0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzk;-><init>(Lcom/google/android/gms/internal/ads/zzfzj;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgij;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfzk;->a(I)Lcom/google/android/gms/internal/ads/zzfzk;

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgdz;->c()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgme;->p:Lcom/google/android/gms/internal/ads/zzgme;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_72

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6f

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6c

    const/4 v5, 0x4

    if-ne v4, v5, :cond_51

    goto :goto_6f

    .line 8
    :cond_51
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgme;->zza()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse OutputPrefixType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_6c
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzl;->d:Lcom/google/android/gms/internal/ads/zzfzl;

    goto :goto_74

    .line 11
    :cond_6f
    :goto_6f
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzl;->c:Lcom/google/android/gms/internal/ads/zzfzl;

    goto :goto_74

    .line 12
    :cond_72
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfzl;->b:Lcom/google/android/gms/internal/ads/zzfzl;

    .line 13
    :goto_74
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfzk;->b(Lcom/google/android/gms/internal/ads/zzfzl;)Lcom/google/android/gms/internal/ads/zzfzk;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfzk;->c()Lcom/google/android/gms/internal/ads/zzfzn;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfzd;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzfzd;-><init>(Lcom/google/android/gms/internal/ads/zzfzc;)V

    .line 15
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfzd;->c(Lcom/google/android/gms/internal/ads/zzfzn;)Lcom/google/android/gms/internal/ads/zzfzd;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgij;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v0

    .line 17
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzgok;->b([BLcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzgok;

    move-result-object p2

    .line 18
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzfzd;->b(Lcom/google/android/gms/internal/ads/zzgok;)Lcom/google/android/gms/internal/ads/zzfzd;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdz;->f()Ljava/lang/Integer;

    move-result-object p1

    .line 19
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfzd;->a(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzfzd;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfzd;->d()Lcom/google/android/gms/internal/ads/zzfzf;

    move-result-object p1

    return-object p1

    .line 21
    :cond_a0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Only version 0 keys are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a8
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_11 .. :try_end_a8} :catch_a8

    .line 22
    :catch_a8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Parsing AesGcmSivKey failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong type URL in call to AesGcmSivParameters.parseParameters"

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
