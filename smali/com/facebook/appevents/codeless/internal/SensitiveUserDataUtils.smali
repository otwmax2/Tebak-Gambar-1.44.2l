###### Class com.facebook.appevents.codeless.internal.SensitiveUserDataUtils (com.facebook.appevents.codeless.internal.SensitiveUserDataUtils)
.class public final Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;
.super Ljava/lang/Object;
.source "SensitiveUserDataUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;-><init>()V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->INSTANCE:Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isCreditCard(Landroid/widget/TextView;)Z
    .registers 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->INSTANCE:Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s"

    new-instance v2, Lba/f;

    invoke-direct {v2, v0}, Lba/f;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, p1, v0}, Lba/f;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_58

    const/16 v2, 0x13

    if-le v0, v2, :cond_28

    goto :goto_58

    :cond_28
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ltz v0, :cond_52

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2e
    add-int/lit8 v5, v0, -0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_3b

    return v1

    .line 5
    :cond_3b
    invoke-static {v0}, Lba/a;->d(C)I

    move-result v0

    if-eqz v3, :cond_4a

    mul-int/lit8 v0, v0, 0x2

    const/16 v6, 0x9

    if-le v0, v6, :cond_4a

    .line 6
    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    :cond_4a
    add-int/2addr v4, v0

    xor-int/lit8 v3, v3, 0x1

    if-gez v5, :cond_50

    goto :goto_53

    :cond_50
    move v0, v5

    goto :goto_2e

    :cond_52
    const/4 v4, 0x0

    .line 7
    :goto_53
    rem-int/lit8 v4, v4, 0xa
    :try_end_55
    .catchall {:try_start_8 .. :try_end_55} :catchall_59

    if-nez v4, :cond_58

    const/4 v1, 0x1

    :cond_58
    :goto_58
    return v1

    :catchall_59
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final isEmail(Landroid/widget/TextView;)Z
    .registers 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ne v0, v2, :cond_12

    return v3

    .line 2
    :cond_12
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->INSTANCE:Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_25

    goto :goto_2f

    .line 4
    :cond_25
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    :cond_2f
    :goto_2f
    return v1

    :catchall_30
    move-exception p1

    .line 5
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final isPassword(Landroid/widget/TextView;)Z
    .registers 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_12

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_12
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    .line 3
    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final isPersonName(Landroid/widget/TextView;)Z
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_12

    const/16 v0, 0x60

    if-ne p1, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    :catchall_12
    move-exception p1

    .line 2
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final isPhoneNumber(Landroid/widget/TextView;)Z
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_11

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    :catchall_11
    move-exception p1

    .line 2
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final isPostalAddress(Landroid/widget/TextView;)Z
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_12

    const/16 v0, 0x70

    if-ne p1, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    :catchall_12
    move-exception p1

    .line 2
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static final isSensitiveUserData(Landroid/view/View;)Z
    .registers 5

    const-class v0, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 1
    :cond_a
    :try_start_a
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_46

    .line 2
    sget-object v1, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->INSTANCE:Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;

    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPassword(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 3
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isCreditCard(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 4
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPersonName(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 5
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPostalAddress(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 6
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v1, v3}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPhoneNumber(Landroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 7
    check-cast p0, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isEmail(Landroid/widget/TextView;)Z

    move-result p0
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_47

    if-eqz p0, :cond_46

    :cond_45
    const/4 v2, 0x1

    :cond_46
    return v2

    :catchall_47
    move-exception p0

    .line 8
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method
