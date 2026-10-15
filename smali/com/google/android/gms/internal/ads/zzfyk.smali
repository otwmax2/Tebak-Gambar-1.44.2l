###### Class com.google.android.gms.internal.ads.zzfyk (com.google.android.gms.internal.ads.zzfyk)
.class final Lcom/google/android/gms/internal/ads/zzfyk;
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

    const-string v2, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgek;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfyk;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfyg;->a:Lcom/google/android/gms/internal/ads/zzfyg;

    const-class v4, Lcom/google/android/gms/internal/ads/zzfyf;

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->a(Lcom/google/android/gms/internal/ads/zzgdl;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdn;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfyk;->b:Lcom/google/android/gms/internal/ads/zzgdn;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfyh;->a:Lcom/google/android/gms/internal/ads/zzfyh;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgdj;->a(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfyk;->c:Lcom/google/android/gms/internal/ads/zzgdj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyi;->a:Lcom/google/android/gms/internal/ads/zzfyi;

    const-class v3, Lcom/google/android/gms/internal/ads/zzfxx;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgcr;->a(Lcom/google/android/gms/internal/ads/zzgcp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgcr;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfyk;->d:Lcom/google/android/gms/internal/ads/zzgcr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyj;->a:Lcom/google/android/gms/internal/ads/zzfyj;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgcn;->b(Lcom/google/android/gms/internal/ads/zzgcl;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgcn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyk;->e:Lcom/google/android/gms/internal/ads/zzgcn;

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

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyk;->b:Lcom/google/android/gms/internal/ads/zzgdn;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->f(Lcom/google/android/gms/internal/ads/zzgdn;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyk;->c:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->e(Lcom/google/android/gms/internal/ads/zzgdj;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyk;->d:Lcom/google/android/gms/internal/ads/zzgcr;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->d(Lcom/google/android/gms/internal/ads/zzgcr;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfyk;->e:Lcom/google/android/gms/internal/ads/zzgcn;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->c(Lcom/google/android/gms/internal/ads/zzgcn;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfyg (com.google.android.gms.internal.ads.zzfyg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfyg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdl;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfyg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyg;->a:Lcom/google/android/gms/internal/ads/zzfyg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfyh (com.google.android.gms.internal.ads.zzfyh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfyh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdh;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfyh;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyh;->a:Lcom/google/android/gms/internal/ads/zzfyh;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfyi (com.google.android.gms.internal.ads.zzfyi)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcp;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfyi;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyi;->a:Lcom/google/android/gms/internal/ads/zzfyi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfyj (com.google.android.gms.internal.ads.zzfyj)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcl;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfyj;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfyj;->a:Lcom/google/android/gms/internal/ads/zzfyj;

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

    sget v0, Lcom/google/android/gms/internal/ads/zzfyk;->f:I

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdz;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghu;->L(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzghu;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghu;->I()I

    move-result v1

    if-nez v1, :cond_b0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfyc;-><init>(Lcom/google/android/gms/internal/ads/zzfyb;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghu;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfyc;->b(I)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghu;->M()Lcom/google/android/gms/internal/ads/zzgia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgia;->I()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfyc;->a(I)Lcom/google/android/gms/internal/ads/zzfyc;

    const/16 v3, 0x10

    .line 8
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfyc;->c(I)Lcom/google/android/gms/internal/ads/zzfyc;

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgdz;->c()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v3

    .line 9
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgme;->p:Lcom/google/android/gms/internal/ads/zzgme;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_82

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7f

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7c

    const/4 v5, 0x4

    if-ne v4, v5, :cond_61

    goto :goto_7f

    .line 10
    :cond_61
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 11
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

    .line 12
    :cond_7c
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfyd;->d:Lcom/google/android/gms/internal/ads/zzfyd;

    goto :goto_84

    .line 13
    :cond_7f
    :goto_7f
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfyd;->c:Lcom/google/android/gms/internal/ads/zzfyd;

    goto :goto_84

    .line 14
    :cond_82
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfyd;->b:Lcom/google/android/gms/internal/ads/zzfyd;

    .line 15
    :goto_84
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfyc;->d(Lcom/google/android/gms/internal/ads/zzfyd;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyc;->e()Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfxv;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzfxv;-><init>(Lcom/google/android/gms/internal/ads/zzfxu;)V

    .line 17
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfxv;->c(Lcom/google/android/gms/internal/ads/zzfyf;)Lcom/google/android/gms/internal/ads/zzfxv;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghu;->N()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v0

    .line 19
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzgok;->b([BLcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzgok;

    move-result-object p2

    .line 20
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzfxv;->b(Lcom/google/android/gms/internal/ads/zzgok;)Lcom/google/android/gms/internal/ads/zzfxv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdz;->f()Ljava/lang/Integer;

    move-result-object p1

    .line 21
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfxv;->a(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzfxv;

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfxv;->d()Lcom/google/android/gms/internal/ads/zzfxx;

    move-result-object p1

    return-object p1

    .line 23
    :cond_b0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Only version 0 keys are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b8
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_11 .. :try_end_b8} :catch_b8

    .line 24
    :catch_b8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Parsing AesEaxcKey failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_c0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong type URL in call to AesEaxParameters.parseParameters"

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
