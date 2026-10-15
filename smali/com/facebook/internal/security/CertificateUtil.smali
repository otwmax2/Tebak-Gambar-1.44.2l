###### Class com.facebook.internal.security.CertificateUtil (com.facebook.internal.security.CertificateUtil)
.class public final Lcom/facebook/internal/security/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.kt"


# static fields
.field public static final DELIMITER:Ljava/lang/String; = ":"

.field public static final INSTANCE:Lcom/facebook/internal/security/CertificateUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/security/CertificateUtil;

    invoke-direct {v0}, Lcom/facebook/internal/security/CertificateUtil;-><init>()V

    sput-object v0, Lcom/facebook/internal/security/CertificateUtil;->INSTANCE:Lcom/facebook/internal/security/CertificateUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCertificateHash(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA1"

    .line 4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "signatures"

    .line 5
    invoke-static {p0, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v2, :cond_46

    aget-object v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    .line 6
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 9
    :cond_46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v1, 0x1

    if-lez p0, :cond_4e

    const/4 v3, 0x1

    :cond_4e
    if-eqz v3, :cond_58

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 11
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_61} :catch_62
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_61} :catch_62

    return-object p0

    :catch_62
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic getDELIMITER$facebook_core_release$annotations()V
    .registers 0

    return-void
.end method
