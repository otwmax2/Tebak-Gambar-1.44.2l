###### Class com.google.android.gms.internal.ads.zzfla (com.google.android.gms.internal.ads.zzfla)
.class public final Lcom/google/android/gms/internal/ads/zzfla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:I

.field public static final b:Landroid/content/ClipData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_9

    const/high16 v0, 0x4000000

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput v0, Lcom/google/android/gms/internal/ads/zzfla;->a:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfla;->b:Landroid/content/ClipData;

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;
    .registers 12
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    and-int/lit8 p1, p3, 0x58

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    const-string v1, "Cannot set any dangerous parts of intent to be mutable."

    .line 1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    and-int/lit8 p1, p3, 0x1

    const/4 v1, 0x3

    if-eqz p1, :cond_1c

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    :goto_1d
    const-string v2, "Cannot use Intent.FILL_IN_ACTION unless the action is marked as mutable."

    .line 2
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    and-int/lit8 p1, p3, 0x2

    const/4 v2, 0x5

    if-eqz p1, :cond_30

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p1, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 p1, 0x1

    :goto_31
    const-string v3, "Cannot use Intent.FILL_IN_DATA unless the data is marked as mutable."

    .line 3
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    and-int/lit8 p1, p3, 0x4

    const/16 v3, 0x9

    if-eqz p1, :cond_45

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_45

    :cond_43
    const/4 p1, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p1, 0x1

    :goto_46
    const-string v4, "Cannot use Intent.FILL_IN_CATEGORIES unless the category is marked as mutable."

    .line 4
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    and-int/lit16 p1, p3, 0x80

    const/16 v4, 0x11

    if-eqz p1, :cond_5a

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p1

    if-eqz p1, :cond_58

    goto :goto_5a

    :cond_58
    const/4 p1, 0x0

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 p1, 0x1

    :goto_5b
    const-string v5, "Cannot use Intent.FILL_IN_CLIP_DATA unless the clip data is marked as mutable."

    .line 5
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_68

    const/4 p1, 0x1

    goto :goto_69

    :cond_68
    const/4 p1, 0x0

    :goto_69
    const-string v5, "Must set component on Intent."

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p1

    const/16 v5, 0x17

    const/high16 v6, 0x4000000

    if-eqz p1, :cond_83

    invoke-static {p3, v6}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p1

    xor-int/2addr p1, p4

    const-string p4, "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set."

    .line 7
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    goto :goto_94

    .line 8
    :cond_83
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_8f

    invoke-static {p3, v6}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p1

    if-eqz p1, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 p4, 0x0

    :cond_8f
    :goto_8f
    const-string p1, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable."

    .line 9
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/ads/zzfnu;->f(ZLjava/lang/Object;)V

    .line 10
    :goto_94
    new-instance p1, Landroid/content/Intent;

    .line 11
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_a3

    invoke-static {p3, v6}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p2

    if-nez p2, :cond_f8

    .line 12
    :cond_a3
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b4

    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_b4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p2

    const-string p4, ""

    if-nez p2, :cond_c5

    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_c5

    .line 15
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_c5
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p2

    if-nez p2, :cond_d4

    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_d4

    .line 17
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_d4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p2

    if-nez p2, :cond_e7

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_e7

    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string p4, "*/*"

    .line 19
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e7
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzfla;->b(II)Z

    move-result p2

    if-nez p2, :cond_f8

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-nez p2, :cond_f8

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfla;->b:Landroid/content/ClipData;

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 22
    :cond_f8
    invoke-static {p0, v0, p1, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static b(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method
