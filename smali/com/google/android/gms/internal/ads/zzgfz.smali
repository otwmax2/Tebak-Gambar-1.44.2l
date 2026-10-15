###### Class com.google.android.gms.internal.ads.zzgfz (com.google.android.gms.internal.ads.zzgfz)
.class final Lcom/google/android/gms/internal/ads/zzgfz;
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

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgek;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzgfz;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfv;->a:Lcom/google/android/gms/internal/ads/zzgfv;

    const-class v4, Lcom/google/android/gms/internal/ads/zzgfu;

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->a(Lcom/google/android/gms/internal/ads/zzgdl;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdn;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzgfz;->b:Lcom/google/android/gms/internal/ads/zzgdn;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfw;->a:Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzgdj;->a(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgfz;->c:Lcom/google/android/gms/internal/ads/zzgdj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfx;->a:Lcom/google/android/gms/internal/ads/zzgfx;

    const-class v3, Lcom/google/android/gms/internal/ads/zzgfk;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgcr;->a(Lcom/google/android/gms/internal/ads/zzgcp;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgcr;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgfz;->d:Lcom/google/android/gms/internal/ads/zzgcr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfy;->a:Lcom/google/android/gms/internal/ads/zzgfy;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgcn;->b(Lcom/google/android/gms/internal/ads/zzgcl;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgcn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfz;->e:Lcom/google/android/gms/internal/ads/zzgcn;

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

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfz;->b:Lcom/google/android/gms/internal/ads/zzgdn;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->f(Lcom/google/android/gms/internal/ads/zzgdn;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfz;->c:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->e(Lcom/google/android/gms/internal/ads/zzgdj;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfz;->d:Lcom/google/android/gms/internal/ads/zzgcr;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->d(Lcom/google/android/gms/internal/ads/zzgcr;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgfz;->e:Lcom/google/android/gms/internal/ads/zzgcn;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdf;->c(Lcom/google/android/gms/internal/ads/zzgcn;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzgfv (com.google.android.gms.internal.ads.zzgfv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzgfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdl;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzgfv;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfv;->a:Lcom/google/android/gms/internal/ads/zzgfv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzgfw (com.google.android.gms.internal.ads.zzgfw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzgfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdh;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzgfw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfw;->a:Lcom/google/android/gms/internal/ads/zzgfw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzgfx (com.google.android.gms.internal.ads.zzgfx)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzgfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcp;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzgfx;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfx;->a:Lcom/google/android/gms/internal/ads/zzgfx;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzgfy (com.google.android.gms.internal.ads.zzgfy)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzgfy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcl;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzgfy;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfy;->a:Lcom/google/android/gms/internal/ads/zzgfy;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzgeb;Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfvx;
    .registers 13

    sget v0, Lcom/google/android/gms/internal/ads/zzgfz;->f:I

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdz;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

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
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjz;->M(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjz;->I()I

    move-result v1

    if-nez v1, :cond_ee

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfq;-><init>(Lcom/google/android/gms/internal/ads/zzgfp;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjz;->O()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgfq;->b(I)Lcom/google/android/gms/internal/ads/zzgfq;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjz;->N()Lcom/google/android/gms/internal/ads/zzgkf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgkf;->I()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgfq;->c(I)Lcom/google/android/gms/internal/ads/zzgfq;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjz;->N()Lcom/google/android/gms/internal/ads/zzgkf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgkf;->N()I

    move-result v3

    .line 9
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgme;->p:Lcom/google/android/gms/internal/ads/zzgme;

    add-int/lit8 v4, v3, -0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v8, :cond_84

    if-eq v4, v7, :cond_81

    if-eq v4, v6, :cond_7e

    if-eq v4, v5, :cond_7b

    const/4 v9, 0x5

    if-ne v4, v9, :cond_60

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfr;->c:Lcom/google/android/gms/internal/ads/zzgfr;

    goto :goto_86

    .line 11
    :cond_60
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgjw;->a(I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse HashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7b
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfr;->f:Lcom/google/android/gms/internal/ads/zzgfr;

    goto :goto_86

    :cond_7e
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfr;->d:Lcom/google/android/gms/internal/ads/zzgfr;

    goto :goto_86

    :cond_81
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfr;->e:Lcom/google/android/gms/internal/ads/zzgfr;

    goto :goto_86

    .line 14
    :cond_84
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfr;->b:Lcom/google/android/gms/internal/ads/zzgfr;

    .line 15
    :goto_86
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgfq;->a(Lcom/google/android/gms/internal/ads/zzgfr;)Lcom/google/android/gms/internal/ads/zzgfq;

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgdz;->c()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v8, :cond_c0

    if-eq v4, v7, :cond_bd

    if-eq v4, v6, :cond_ba

    if-ne v4, v5, :cond_9f

    .line 17
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfs;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    goto :goto_c2

    .line 18
    :cond_9f
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 19
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

    .line 20
    :cond_ba
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfs;->e:Lcom/google/android/gms/internal/ads/zzgfs;

    goto :goto_c2

    :cond_bd
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfs;->d:Lcom/google/android/gms/internal/ads/zzgfs;

    goto :goto_c2

    .line 21
    :cond_c0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgfs;->b:Lcom/google/android/gms/internal/ads/zzgfs;

    .line 22
    :goto_c2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzgfq;->d(Lcom/google/android/gms/internal/ads/zzgfs;)Lcom/google/android/gms/internal/ads/zzgfq;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgfq;->e()Lcom/google/android/gms/internal/ads/zzgfu;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgfi;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(Lcom/google/android/gms/internal/ads/zzgfh;)V

    .line 24
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzgfi;->c(Lcom/google/android/gms/internal/ads/zzgfu;)Lcom/google/android/gms/internal/ads/zzgfi;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjz;->O()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v0

    .line 26
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzgok;->b([BLcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzgok;

    move-result-object p2

    .line 27
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzgfi;->b(Lcom/google/android/gms/internal/ads/zzgok;)Lcom/google/android/gms/internal/ads/zzgfi;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdz;->f()Ljava/lang/Integer;

    move-result-object p1

    .line 28
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzgfi;->a(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgfi;

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgfi;->d()Lcom/google/android/gms/internal/ads/zzgfk;

    move-result-object p1

    return-object p1

    .line 30
    :cond_ee
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Only version 0 keys are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_f6
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_11 .. :try_end_f6} :catch_f6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_f6} :catch_f6

    .line 31
    :catch_f6
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Parsing HmacKey failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_fe
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong type URL in call to HmacProtoSerialization.parseKey"

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
