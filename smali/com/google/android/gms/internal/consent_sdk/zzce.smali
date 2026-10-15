###### Class com.google.android.gms.internal.consent_sdk.zzce (com.google.android.gms.internal.consent_sdk.zzce)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzce;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2d

    const-class v0, Lcom/google/android/gms/internal/consent_sdk/zzce;

    monitor-enter v0

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->a:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_2a

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    :try_start_e
    const-string v1, "(function(){})()"

    .line 1
    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->a:Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_18
    .catchall {:try_start_e .. :try_end_17} :catchall_2a

    goto :goto_1c

    .line 3
    :catch_18
    :try_start_18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->a:Ljava/lang/Boolean;

    .line 4
    :cond_1c
    :goto_1c
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->a:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_2a

    if-nez v1, :cond_26

    goto :goto_2d

    .line 6
    :cond_26
    invoke-virtual {p0, p1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :catchall_2a
    move-exception p0

    .line 7
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0

    .line 8
    :cond_2d
    :goto_2d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascript:"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_3e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
