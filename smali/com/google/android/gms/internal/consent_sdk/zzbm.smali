###### Class com.google.android.gms.internal.consent_sdk.zzbm (com.google.android.gms.internal.consent_sdk.zzbm)
.class final Lcom/google/android/gms/internal/consent_sdk/zzbm;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzg;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lcom/google/android/gms/internal/consent_sdk/zzbi;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/android/gms/internal/consent_sdk/zzh;

.field private final f:Lcom/google/android/gms/internal/consent_sdk/zzak;

.field private final g:Lcom/google/android/gms/internal/consent_sdk/zzay;

.field private final h:Lcom/google/android/gms/internal/consent_sdk/zzam;


# direct methods
.method private final e(Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "url"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UserMessagingPlatform"

    if-eqz v0, :cond_13

    const-string v0, "Action[browser]: empty url."

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_36

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Action[browser]: empty scheme: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 7
    :cond_2e
    new-instance v2, Ljava/lang/String;

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 9
    :goto_33
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :try_start_36
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 10
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->b:Lcom/google/android/gms/internal/consent_sdk/zzbi;

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbi;->startActivity(Landroid/content/Intent;)V
    :try_end_42
    .catch Landroid/content/ActivityNotFoundException; {:try_start_36 .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception v0

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Action[browser]: can not open url: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5a

    .line 13
    :cond_55
    new-instance p1, Ljava/lang/String;

    .line 14
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 15
    :goto_5a
    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_b2

    goto :goto_35

    :sswitch_d
    const-string v0, "dismiss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x1

    goto :goto_36

    :sswitch_17
    const-string v0, "browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x2

    goto :goto_36

    :sswitch_21
    const-string v0, "configure_app_assets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x3

    goto :goto_36

    :sswitch_2b
    const-string v0, "load_complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p1, -0x1

    :goto_36
    if-eqz p1, :cond_ab

    if-eq p1, v5, :cond_4e

    if-eq p1, v3, :cond_4a

    if-eq p1, v4, :cond_3f

    return v2

    .line 2
    :cond_3f
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->d:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzbk;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/consent_sdk/zzbk;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbm;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v5

    .line 4
    :cond_4a
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzbm;->e(Lorg/json/JSONObject;)V

    return v5

    :cond_4e
    const-string p1, "status"

    .line 5
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x4

    sparse-switch p2, :sswitch_data_c4

    goto :goto_8e

    :sswitch_5d
    const-string p2, "non_personalized"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    const/4 v1, 0x2

    goto :goto_8e

    :sswitch_67
    const-string p2, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    const/4 v1, 0x1

    goto :goto_8e

    :sswitch_71
    const-string p2, "CONSENT_SIGNAL_SUFFICIENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    const/4 v1, 0x4

    goto :goto_8e

    :sswitch_7b
    const-string p2, "personalized"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    const/4 v1, 0x0

    goto :goto_8e

    :sswitch_85
    const-string p2, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    const/4 v1, 0x3

    :cond_8e
    :goto_8e
    if-eqz v1, :cond_a5

    if-eq v1, v5, :cond_a5

    if-eq v1, v3, :cond_a5

    if-eq v1, v4, :cond_a5

    if-eq v1, v0, :cond_a5

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->g:Lcom/google/android/gms/internal/consent_sdk/zzay;

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const-string v0, "We are getting something wrong with the webview."

    .line 7
    invoke-direct {p2, v5, v0}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzay;->c(Lcom/google/android/gms/internal/consent_sdk/zzj;)V

    goto :goto_aa

    :cond_a5
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->g:Lcom/google/android/gms/internal/consent_sdk/zzay;

    .line 8
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/consent_sdk/zzay;->b(I)V

    :goto_aa
    return v5

    .line 9
    :cond_ab
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->g:Lcom/google/android/gms/internal/consent_sdk/zzay;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->d()V

    return v5

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x51b03f8e -> :sswitch_2b
        -0x109d39a6 -> :sswitch_21
        0x8ff2b28 -> :sswitch_17
        0x63a3b28a -> :sswitch_d
    .end sparse-switch

    :sswitch_data_c4
    .sparse-switch
        -0x38e1da9b -> :sswitch_85
        -0xf616830 -> :sswitch_7b
        0x19984e10 -> :sswitch_71
        0x1be36b13 -> :sswitch_67
        0x635b0c02 -> :sswitch_5d
    .end sparse-switch
.end method

.method public final synthetic b()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->a:Landroid/app/Application;

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "app_name"

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_icon"

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_7b

    .line 5
    :cond_2e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    .line 8
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v3, "data:image/png;base64,"

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v4, 0x2

    .line 14
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_76

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    :cond_76
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 15
    :goto_7b
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "stored_infos_map"

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->h:Lcom/google/android/gms/internal/consent_sdk/zzam;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzam;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_89} :catch_89

    :catch_89
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->g:Lcom/google/android/gms/internal/consent_sdk/zzay;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzay;->a()Lcom/google/android/gms/internal/consent_sdk/zzbg;

    move-result-object v0

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UMP_configureFormWithAppAssets"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbg;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final c(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Receive consent action: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 2
    :cond_11
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    const-string v1, "UserMessagingPlatform"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "action"

    .line 6
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "args"

    .line 7
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->e:Lcom/google/android/gms/internal/consent_sdk/zzh;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/consent_sdk/zzg;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->f:Lcom/google/android/gms/internal/consent_sdk/zzak;

    aput-object v4, v2, v3

    .line 8
    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzh;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    return-void
.end method

.method final d(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->g:Lcom/google/android/gms/internal/consent_sdk/zzay;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p3, v3, p1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const-string p2, "WebResourceError(%d, %s): %s"

    .line 2
    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzay;->e(Lcom/google/android/gms/internal/consent_sdk/zzj;)V

    return-void
.end method

.method public final zza()Ljava/util/concurrent/Executor;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbm;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbl;

    .line 1
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbl;-><init>(Landroid/os/Handler;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.consent_sdk.zzbk (com.google.android.gms.internal.consent_sdk.zzbk)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/consent_sdk/zzbm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->o:Lcom/google/android/gms/internal/consent_sdk/zzbm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbk;->o:Lcom/google/android/gms/internal/consent_sdk/zzbm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzbm;->b()V

    return-void
.end method

###### Class com.google.android.gms.internal.consent_sdk.zzbl (com.google.android.gms.internal.consent_sdk.zzbl)
.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic o:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbl;->o:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbl;->o:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
