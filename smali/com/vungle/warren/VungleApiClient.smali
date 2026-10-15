###### Class com.vungle.warren.VungleApiClient (com.vungle.warren.VungleApiClient)
.class public Lcom/vungle/warren/VungleApiClient;
.super Ljava/lang/Object;
.source "VungleApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;,
        Lcom/vungle/warren/VungleApiClient$ConnectionTypeDetail;,
        Lcom/vungle/warren/VungleApiClient$WrapperFramework;,
        Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "com.vungle.warren.VungleApiClient"

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field protected static D:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field private static E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lja/u;",
            ">;"
        }
    .end annotation
.end field

.field private static F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lja/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vungle/warren/network/VungleApi;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/google/gson/o;

.field private l:Lcom/google/gson/o;

.field private m:Z

.field private n:I

.field private o:Lja/x;

.field private p:Lcom/vungle/warren/network/VungleApi;

.field private q:Lcom/vungle/warren/network/VungleApi;

.field private r:Z

.field private s:Lcom/vungle/warren/persistence/CacheManager;

.field private t:Ljava/lang/Boolean;

.field private u:Lcom/vungle/warren/utility/TimeoutProvider;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Lcom/vungle/warren/persistence/Repository;

.field private y:Ljava/lang/String;

.field private final z:Lcom/vungle/warren/omsdk/OMInjector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "VungleAmazon/"

    goto :goto_14

    :cond_12
    const-string v1, "VungleDroid/"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "6.10.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/VungleApiClient;->B:Ljava/lang/String;

    const-string v0, "https://ads.api.vungle.com/"

    .line 3
    sput-object v0, Lcom/vungle/warren/VungleApiClient;->C:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vungle/warren/VungleApiClient;->E:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vungle/warren/VungleApiClient;->F:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/omsdk/OMInjector;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->v:Ljava/util/Map;

    const-string v0, "http.agent"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->y:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient;->s:Lcom/vungle/warren/persistence/CacheManager;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient;->x:Lcom/vungle/warren/persistence/Repository;

    .line 7
    iput-object p4, p0, Lcom/vungle/warren/VungleApiClient;->z:Lcom/vungle/warren/omsdk/OMInjector;

    .line 8
    new-instance p2, Lcom/vungle/warren/VungleApiClient$1;

    invoke-direct {p2, p0}, Lcom/vungle/warren/VungleApiClient$1;-><init>(Lcom/vungle/warren/VungleApiClient;)V

    .line 9
    new-instance p3, Lja/x$b;

    invoke-direct {p3}, Lja/x$b;-><init>()V

    .line 10
    invoke-virtual {p3, p2}, Lja/x$b;->a(Lja/u;)Lja/x$b;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lja/x$b;->d()Lja/x;

    move-result-object p3

    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient;->o:Lja/x;

    .line 12
    new-instance p3, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

    invoke-direct {p3}, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;-><init>()V

    invoke-virtual {p2, p3}, Lja/x$b;->a(Lja/u;)Lja/x$b;

    move-result-object p2

    invoke-virtual {p2}, Lja/x$b;->d()Lja/x;

    move-result-object p2

    .line 13
    new-instance p3, Lcom/vungle/warren/network/APIFactory;

    iget-object p4, p0, Lcom/vungle/warren/VungleApiClient;->o:Lja/x;

    sget-object v0, Lcom/vungle/warren/VungleApiClient;->C:Ljava/lang/String;

    invoke-direct {p3, p4, v0}, Lcom/vungle/warren/network/APIFactory;-><init>(Lja/e$a;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/vungle/warren/network/APIFactory;->createAPI()Lcom/vungle/warren/network/VungleApi;

    move-result-object p3

    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient;->b:Lcom/vungle/warren/network/VungleApi;

    .line 14
    new-instance p3, Lcom/vungle/warren/network/APIFactory;

    sget-object p4, Lcom/vungle/warren/VungleApiClient;->C:Ljava/lang/String;

    invoke-direct {p3, p2, p4}, Lcom/vungle/warren/network/APIFactory;-><init>(Lja/e$a;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/vungle/warren/network/APIFactory;->createAPI()Lcom/vungle/warren/network/VungleApi;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient;->q:Lcom/vungle/warren/network/VungleApi;

    .line 15
    invoke-static {p1}, Lcom/vungle/warren/ServiceLocator;->f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object p1

    .line 16
    const-class p2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {p1, p2}, Lcom/vungle/warren/ServiceLocator;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/utility/TimeoutProvider;

    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->u:Lcom/vungle/warren/utility/TimeoutProvider;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/VungleApiClient;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->v:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/vungle/warren/VungleApiClient;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/vungle/warren/VungleApiClient;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/vungle/warren/VungleApiClient;)Lcom/google/gson/o;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    return-object p0
.end method

.method static synthetic g(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/VungleApiClient;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static getHeaderUa()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleApiClient;->B:Ljava/lang/String;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "userAgent"

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->x:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    return-void
.end method

.method private k(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_28

    :pswitch_3
    const-string p1, "unknown"

    return-object p1

    :pswitch_6
    const-string p1, "hrpd"

    return-object p1

    :pswitch_9
    const-string p1, "LTE"

    return-object p1

    :pswitch_c
    const-string p1, "cdma_evdo_b"

    return-object p1

    :pswitch_f
    const-string p1, "hsupa"

    return-object p1

    :pswitch_12
    const-string p1, "hsdpa"

    return-object p1

    :pswitch_15
    const-string p1, "cdma_1xrtt"

    return-object p1

    :pswitch_18
    const-string p1, "cdma_evdo_a"

    return-object p1

    :pswitch_1b
    const-string p1, "cdma_evdo_0"

    return-object p1

    :pswitch_1e
    const-string p1, "wcdma"

    return-object p1

    :pswitch_21
    const-string p1, "edge"

    return-object p1

    :pswitch_24
    const-string p1, "gprs"

    return-object p1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
        :pswitch_3
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private l()Lcom/google/gson/o;
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds",
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "ifa"

    const-string v1, "Amazon"

    .line 1
    new-instance v2, Lcom/google/gson/o;

    invoke-direct {v2}, Lcom/google/gson/o;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2
    :try_start_c
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_84

    const-string v7, "advertising_id"

    if-eqz v6, :cond_3d

    .line 3
    :try_start_16
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "limit_ad_tracking"

    .line 4
    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8
    :try_end_22
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_16 .. :try_end_22} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_84

    if-ne v8, v5, :cond_26

    const/4 v8, 0x1

    goto :goto_27

    :cond_26
    const/4 v8, 0x0

    .line 5
    :goto_27
    :try_start_27
    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_27 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_3a

    goto/16 :goto_90

    :catch_2d
    move-exception v6

    goto :goto_31

    :catch_2f
    move-exception v6

    const/4 v8, 0x1

    .line 6
    :goto_31
    :try_start_31
    sget-object v7, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    const-string v9, "Error getting Amazon advertising info"

    invoke-static {v7, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_3a

    move-object v6, v3

    goto :goto_90

    :catch_3a
    move v6, v8

    move-object v8, v3

    goto :goto_86

    .line 7
    :cond_3d
    :try_start_3d
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v6

    if-eqz v6, :cond_57

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object v8
    :try_end_49
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3d .. :try_end_49} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_84

    .line 9
    :try_start_49
    invoke-virtual {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result v6
    :try_end_4d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_49 .. :try_end_4d} :catch_55
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_85

    .line 10
    :try_start_4d
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    invoke-virtual {v9, v0, v8}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4d .. :try_end_52} :catch_53
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_86

    goto :goto_8d

    :catch_53
    move-exception v9

    goto :goto_5d

    :catch_55
    move-exception v9

    goto :goto_5c

    :cond_57
    move-object v6, v3

    const/4 v8, 0x1

    goto :goto_90

    :catch_5a
    move-exception v9

    move-object v8, v3

    :goto_5c
    const/4 v6, 0x1

    .line 11
    :goto_5d
    :try_start_5d
    sget-object v10, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Play services Not available: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/NoClassDefFoundError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 13
    invoke-static {v9, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_81} :catch_86

    move v8, v6

    move-object v6, v7

    goto :goto_90

    :catch_84
    move-object v8, v3

    :catch_85
    const/4 v6, 0x1

    .line 14
    :catch_86
    :goto_86
    sget-object v7, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    const-string v9, "Cannot load Advertising ID"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    move-object v14, v8

    move v8, v6

    move-object v6, v14

    :goto_90
    const-string v7, ""

    if-eqz v6, :cond_aa

    .line 15
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    const-string v9, "amazon_advertising_id"

    goto :goto_a1

    :cond_9f
    const-string v9, "gaid"

    :goto_a1
    invoke-virtual {v2, v9, v6}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    invoke-virtual {v9, v0, v6}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d5

    .line 17
    :cond_aa
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "android_id"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    iget-object v10, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    iget-boolean v11, p0, Lcom/vungle/warren/VungleApiClient;->w:Z

    if-eqz v11, :cond_be

    :cond_bc
    move-object v11, v7

    goto :goto_c5

    .line 19
    :cond_be
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bc

    move-object v11, v6

    .line 20
    :goto_c5
    invoke-virtual {v10, v0, v11}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->w:Z

    if-nez v0, :cond_d5

    .line 22
    invoke-virtual {v2, v9, v6}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_d5
    :goto_d5
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "lmt"

    invoke-virtual {v0, v8, v6}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v6, "is_google_play_services_available"

    invoke-virtual {v2, v6, v0}, Lcom/google/gson/o;->u(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    if-eqz v0, :cond_102

    .line 27
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    :cond_102
    const/4 v0, 0x4

    const/4 v6, 0x2

    const-string v8, "UNKNOWN"

    if-eqz v3, :cond_14f

    const-string v9, "level"

    const/4 v10, -0x1

    .line 28
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v11, "scale"

    .line 29
    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-lez v9, :cond_125

    if-lez v11, :cond_125

    int-to-float v9, v9

    int-to-float v11, v11

    div-float/2addr v9, v11

    .line 30
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v11, "battery_level"

    invoke-virtual {v2, v11, v9}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_125
    const-string v9, "status"

    .line 31
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_12e

    goto :goto_14f

    :cond_12e
    if-eq v9, v6, :cond_137

    const/4 v11, 0x5

    if-ne v9, v11, :cond_134

    goto :goto_137

    :cond_134
    const-string v3, "NOT_CHARGING"

    goto :goto_150

    :cond_137
    :goto_137
    const-string v9, "plugged"

    .line 32
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_14c

    if-eq v3, v6, :cond_149

    if-eq v3, v0, :cond_146

    const-string v3, "BATTERY_PLUGGED_OTHERS"

    goto :goto_150

    :cond_146
    const-string v3, "BATTERY_PLUGGED_WIRELESS"

    goto :goto_150

    :cond_149
    const-string v3, "BATTERY_PLUGGED_USB"

    goto :goto_150

    :cond_14c
    const-string v3, "BATTERY_PLUGGED_AC"

    goto :goto_150

    :cond_14f
    :goto_14f
    move-object v3, v8

    :goto_150
    const-string v9, "battery_state"

    .line 33
    invoke-virtual {v2, v9, v3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-eqz v3, :cond_169

    .line 35
    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    if-eqz v3, :cond_169

    const/4 v3, 0x1

    goto :goto_16a

    :cond_169
    const/4 v3, 0x0

    :goto_16a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v9, "battery_saver_enabled"

    .line 36
    invoke-virtual {v2, v9, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 37
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    const-string v9, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v3, v9}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/16 v9, 0x18

    const/4 v10, 0x3

    if-nez v3, :cond_200

    .line 38
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    const-string v11, "unknown"

    if-eqz v3, :cond_1bc

    .line 39
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    if-eqz v12, :cond_1bc

    .line 40
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    if-eqz v13, :cond_1b1

    if-eq v13, v5, :cond_1ae

    const/4 v12, 0x6

    if-eq v13, v12, :cond_1ae

    const/4 v12, 0x7

    if-eq v13, v12, :cond_1ab

    const/16 v12, 0x9

    if-eq v13, v12, :cond_1a8

    move-object v12, v8

    goto :goto_1be

    :cond_1a8
    const-string v12, "ETHERNET"

    goto :goto_1be

    :cond_1ab
    const-string v12, "BLUETOOTH"

    goto :goto_1be

    :cond_1ae
    const-string v12, "WIFI"

    goto :goto_1be

    .line 41
    :cond_1b1
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/vungle/warren/VungleApiClient;->k(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "MOBILE"

    goto :goto_1be

    :cond_1bc
    const-string v12, "NONE"

    :goto_1be
    const-string v13, "connection_type"

    .line 42
    invoke-virtual {v2, v13, v12}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "connection_type_detail"

    .line 43
    invoke-virtual {v2, v12, v11}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v9, :cond_200

    .line 45
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v11

    const-string v12, "network_metered"

    const-string v13, "data_saver_status"

    if-eqz v11, :cond_1f4

    .line 46
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v3

    if-eq v3, v5, :cond_1e7

    if-eq v3, v6, :cond_1e4

    if-eq v3, v10, :cond_1e1

    goto :goto_1e9

    :cond_1e1
    const-string v8, "ENABLED"

    goto :goto_1e9

    :cond_1e4
    const-string v8, "WHITELISTED"

    goto :goto_1e9

    :cond_1e7
    const-string v8, "DISABLED"

    .line 47
    :goto_1e9
    invoke-virtual {v2, v13, v8}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_200

    :cond_1f4
    const-string v3, "NOT_APPLICABLE"

    .line 49
    invoke-virtual {v2, v13, v3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 51
    :cond_200
    :goto_200
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "locale"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v6, "language"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v6, "time_zone"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    if-eqz v3, :cond_255

    .line 55
    invoke-virtual {v3, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    .line 56
    invoke-virtual {v3, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v8, v3

    int-to-float v6, v6

    div-float/2addr v8, v6

    .line 57
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v8, "volume_level"

    invoke-virtual {v2, v8, v6}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    if-lez v3, :cond_24b

    const/4 v3, 0x1

    goto :goto_24c

    :cond_24b
    const/4 v3, 0x0

    .line 58
    :goto_24c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "sound_enabled"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 59
    :cond_255
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->s:Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_279

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_279

    .line 62
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->s:Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "storage_bytes_available"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 63
    :cond_279
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_292

    .line 64
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "amazon.hardware.fire_tv"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2d1

    .line 65
    :cond_292
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_2ac

    .line 66
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    const-string v6, "uimode"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    .line 67
    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    if-ne v3, v0, :cond_2aa

    :cond_2a8
    :goto_2a8
    const/4 v0, 0x1

    goto :goto_2d1

    :cond_2aa
    const/4 v0, 0x0

    goto :goto_2d1

    .line 68
    :cond_2ac
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.tv"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a8

    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.touchscreen"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2aa

    goto :goto_2a8

    .line 70
    :goto_2d1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "is_tv"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/o;->u(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "os_api_level"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 72
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "app_target_sdk_version"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    if-lt v0, v9, :cond_309

    .line 73
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "app_min_sdk_version"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_309
    const/16 v3, 0x1a

    if-lt v0, v3, :cond_327

    .line 74
    :try_start_30d
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 75
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33f

    .line 76
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    move v4, v0

    goto :goto_33f

    .line 77
    :cond_327
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "install_non_market_apps"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_333
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_30d .. :try_end_333} :catch_337

    if-ne v0, v5, :cond_33f

    const/4 v4, 0x1

    goto :goto_33f

    :catch_337
    move-exception v0

    .line 78
    sget-object v3, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    const-string v5, "isInstallNonMarketAppsEnabled Settings not found"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_33f
    :goto_33f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "is_sideload_enabled"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/o;->u(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "sd_card_available"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 82
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "os_name"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vduid"

    .line 83
    invoke-virtual {v2, v0, v7}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    const-string v3, "ext"

    invoke-virtual {v0, v3}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v0

    const-string v3, "vungle"

    invoke-virtual {v0, v3}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_380

    const-string v1, "amazon"

    goto :goto_382

    :cond_380
    const-string v1, "android"

    :goto_382
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 85
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->x:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "userAgent"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "http.agent"

    if-nez v0, :cond_19

    .line 2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 3
    :cond_19
    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_27
    :goto_27
    return-object v0
.end method

.method private p()Lcom/google/gson/o;
    .registers 13

    .line 1
    const-class v0, Lcom/vungle/warren/model/Cookie;

    new-instance v1, Lcom/google/gson/o;

    invoke-direct {v1}, Lcom/google/gson/o;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->x:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->u:Lcom/vungle/warren/utility/TimeoutProvider;

    .line 3
    invoke-interface {v3}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Cookie;

    const-string v3, "consent_message_version"

    const-string v4, "consent_source"

    const-string v5, "consent_status"

    const-string v6, ""

    if-eqz v2, :cond_3e

    .line 4
    invoke-virtual {v2, v5}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v2, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "timestamp"

    .line 6
    invoke-virtual {v2, v9}, Lcom/vungle/warren/model/Cookie;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 7
    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_3e
    const-wide/16 v9, 0x0

    const-string v7, "unknown"

    const-string v8, "no_interaction"

    move-object v2, v6

    .line 8
    :goto_45
    new-instance v11, Lcom/google/gson/o;

    invoke-direct {v11}, Lcom/google/gson/o;-><init>()V

    .line 9
    invoke-virtual {v11, v5, v7}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v11, v4, v8}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "consent_timestamp"

    invoke-virtual {v11, v5, v4}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_60

    goto :goto_61

    :cond_60
    move-object v6, v2

    :goto_61
    invoke-virtual {v11, v3, v6}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gdpr"

    .line 13
    invoke-virtual {v1, v2, v11}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 14
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->x:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "ccpaIsImportantToVungle"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-eqz v0, :cond_80

    const-string v2, "ccpa_status"

    .line 15
    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    :cond_80
    const-string v0, "opted_in"

    .line 16
    :goto_82
    new-instance v2, Lcom/google/gson/o;

    invoke-direct {v2}, Lcom/google/gson/o;-><init>()V

    const-string v3, "status"

    .line 17
    invoke-virtual {v2, v3, v0}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ccpa"

    .line 18
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    return-object v1
.end method

.method private r()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vungle/warren/VungleApiClient$2;

    invoke-direct {v1, p0}, Lcom/vungle/warren/VungleApiClient$2;-><init>(Lcom/vungle/warren/VungleApiClient;)V

    const-string v2, "vng_iual"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setHeaderUa(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/vungle/warren/VungleApiClient;->B:Ljava/lang/String;

    return-void
.end method

.method private t(Ljava/lang/String;Lcom/google/gson/o;)V
    .registers 4

    const-string v0, "id"

    .line 1
    invoke-virtual {p2, v0, p1}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bustAnalytics(Ljava/util/Collection;)Lcom/vungle/warren/network/Call;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/model/CacheBust;",
            ">;)",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->j:Ljava/lang/String;

    if-eqz v0, :cond_90

    .line 2
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->l()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 5
    new-instance v1, Lcom/google/gson/o;

    invoke-direct {v1}, Lcom/google/gson/o;-><init>()V

    .line 6
    new-instance v2, Lcom/google/gson/i;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/gson/i;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/CacheBust;

    const/4 v4, 0x0

    .line 8
    :goto_38
    invoke-virtual {v3}, Lcom/vungle/warren/model/CacheBust;->getEventIds()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2b

    .line 9
    new-instance v5, Lcom/google/gson/o;

    invoke-direct {v5}, Lcom/google/gson/o;-><init>()V

    .line 10
    invoke-virtual {v3}, Lcom/vungle/warren/model/CacheBust;->getIdType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4e

    const-string v6, "campaign"

    goto :goto_50

    :cond_4e
    const-string v6, "creative"

    :goto_50
    const-string v7, "target"

    .line 11
    invoke-virtual {v5, v7, v6}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Lcom/vungle/warren/model/CacheBust;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Lcom/vungle/warren/model/CacheBust;->getEventIds()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    const-string v7, "event_id"

    invoke-virtual {v5, v7, v6}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v5}, Lcom/google/gson/i;->t(Lcom/google/gson/l;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_6f
    const-string p1, "cache_bust"

    .line 15
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 16
    new-instance p1, Lcom/google/gson/o;

    invoke-direct {p1}, Lcom/google/gson/o;-><init>()V

    const-string v2, "sessionReport"

    .line 17
    invoke-virtual {v1, v2, p1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    const-string p1, "request"

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 19
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->q:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->j:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->bustAnalytics(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 20
    :cond_90
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_99

    :goto_98
    throw p1

    :goto_99
    goto :goto_98
.end method

.method public cacheBust(J)Lcom/vungle/warren/network/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->i:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 2
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->l()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->p()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "user"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 7
    new-instance v1, Lcom/google/gson/o;

    invoke-direct {v1}, Lcom/google/gson/o;-><init>()V

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_cache_bust"

    invoke-virtual {v1, p2, p1}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "request"

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 10
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->q:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->i:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0}, Lcom/vungle/warren/network/VungleApi;->cacheBust(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 11
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public config()Lcom/vungle/warren/network/Response;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/error/VungleException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->l()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 4
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->p()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 5
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->b:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->config(Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_33

    return-object v0

    .line 7
    :cond_33
    invoke-virtual {v0}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/o;

    .line 8
    sget-object v2, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "sleep"

    .line 9
    invoke-static {v1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "Error Initializing Vungle. Please try again. "

    if-eqz v3, :cond_85

    const-string v0, "info"

    .line 10
    invoke-static {v1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {v1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    :cond_6b
    const-string v0, ""

    .line 11
    :goto_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0

    :cond_85
    const-string v3, "endpoints"

    .line 13
    invoke-static {v1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a8

    .line 14
    invoke-virtual {v1, v3}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v3

    const-string v6, "new"

    .line 15
    invoke-virtual {v3, v6}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v6

    const-string v7, "ads"

    .line 16
    invoke-virtual {v3, v7}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v7

    const-string v8, "will_play_ad"

    .line 17
    invoke-virtual {v3, v8}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v9

    const-string v10, "report_ad"

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v10

    const-string v11, "ri"

    .line 19
    invoke-virtual {v3, v11}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v11

    const-string v12, "log"

    .line 20
    invoke-virtual {v3, v12}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v12

    const-string v13, "cache_bust"

    .line 21
    invoke-virtual {v3, v13}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v13

    const-string v14, "sdk_bi"

    .line 22
    invoke-virtual {v3, v14}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v3

    if-eqz v6, :cond_19f

    if-eqz v7, :cond_19f

    if-eqz v9, :cond_19f

    if-eqz v10, :cond_19f

    if-eqz v11, :cond_19f

    if-eqz v12, :cond_19f

    if-eqz v13, :cond_19f

    .line 23
    invoke-virtual {v6}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/warren/VungleApiClient;->c:Ljava/lang/String;

    .line 24
    invoke-virtual {v7}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/warren/VungleApiClient;->d:Ljava/lang/String;

    .line 25
    invoke-virtual {v9}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/warren/VungleApiClient;->f:Ljava/lang/String;

    .line 26
    invoke-virtual {v10}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/warren/VungleApiClient;->e:Ljava/lang/String;

    .line 27
    invoke-virtual {v11}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/warren/VungleApiClient;->g:Ljava/lang/String;

    .line 28
    invoke-virtual {v12}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/warren/VungleApiClient;->h:Ljava/lang/String;

    .line 29
    invoke-virtual {v13}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/warren/VungleApiClient;->i:Ljava/lang/String;

    .line 30
    invoke-virtual {v3}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/VungleApiClient;->j:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v8}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v3

    const-string v4, "request_timeout"

    .line 32
    invoke-virtual {v3, v4}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/l;->j()I

    move-result v4

    iput v4, p0, Lcom/vungle/warren/VungleApiClient;->n:I

    const-string v4, "enabled"

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/l;->c()Z

    move-result v3

    iput-boolean v3, p0, Lcom/vungle/warren/VungleApiClient;->m:Z

    const-string v3, "viewability"

    .line 34
    invoke-virtual {v1, v3}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "om"

    .line 35
    invoke-static {v1, v4, v3}, Lcom/vungle/warren/model/JsonUtil;->getAsBoolean(Lcom/google/gson/l;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vungle/warren/VungleApiClient;->r:Z

    .line 36
    iget-boolean v1, p0, Lcom/vungle/warren/VungleApiClient;->m:Z

    if-eqz v1, :cond_193

    const-string v1, "willPlayAd is enabled, generating a timeout client."

    .line 37
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->o:Lja/x;

    invoke-virtual {v1}, Lja/x;->t()Lja/x$b;

    move-result-object v1

    iget v2, p0, Lcom/vungle/warren/VungleApiClient;->n:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    invoke-virtual {v1, v2, v3, v4}, Lja/x$b;->j(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lja/x$b;->d()Lja/x;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/vungle/warren/network/APIFactory;

    const-string v3, "https://api.vungle.com/"

    invoke-direct {v2, v1, v3}, Lcom/vungle/warren/network/APIFactory;-><init>(Lja/e$a;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2}, Lcom/vungle/warren/network/APIFactory;->createAPI()Lcom/vungle/warren/network/VungleApi;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/warren/VungleApiClient;->p:Lcom/vungle/warren/network/VungleApi;

    .line 43
    :cond_193
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->getOmEnabled()Z

    move-result v1

    if-eqz v1, :cond_19e

    .line 44
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->z:Lcom/vungle/warren/omsdk/OMInjector;

    invoke-virtual {v1}, Lcom/vungle/warren/omsdk/OMInjector;->init()V

    :cond_19e
    return-object v0

    .line 45
    :cond_19f
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0

    .line 47
    :cond_1a8
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0
.end method

.method public getOmEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->r:Z

    return v0
.end method

.method public getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/network/Response;->headers()Lja/s;

    move-result-object p1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_a
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_13

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :catch_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method h(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "isPlaySvcAvailable"

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->x:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/vungle/warren/VungleApiClient;->q(Landroid/content/Context;)V

    return-void
.end method

.method public isGooglePlayServicesAvailable()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->n()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->t:Ljava/lang/Boolean;

    .line 3
    :cond_a
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->t:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    .line 4
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->m()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->t:Ljava/lang/Boolean;

    .line 5
    :cond_14
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->t:Ljava/lang/Boolean;

    return-object v0
.end method

.method j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->m:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method m()Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->h()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 2
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->i(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vungle/warren/VungleApiClient;->h(Z)V
    :try_end_1e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_1e} :catch_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_3b

    .line 4
    :catch_1f
    sget-object v0, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    const-string v2, "Unexpected exception from Play services lib."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 5
    :catch_27
    sget-object v1, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    const-string v2, "Play services Not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    :try_start_30
    invoke-virtual {p0, v0}, Lcom/vungle/warren/VungleApiClient;->h(Z)V
    :try_end_33
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3b

    .line 8
    :catch_34
    sget-object v0, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    const-string v2, "Failure to write GPS availability to DB"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_3b
    return-object v1
.end method

.method n()Ljava/lang/Boolean;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->x:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "isPlaySvcAvailable"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->u:Lcom/vungle/warren/utility/TimeoutProvider;

    .line 2
    invoke-interface {v1}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-eqz v0, :cond_1f

    .line 3
    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public pingTPAT(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid URL : "

    if-nez v0, :cond_70

    invoke-static {p1}, Lja/t;->r(Ljava/lang/String;)Lja/t;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 2
    :try_start_e
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_17} :catch_5b

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-lt v1, v2, :cond_27

    .line 4
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_35

    :cond_27
    const/16 v0, 0x17

    if-lt v1, v0, :cond_34

    .line 5
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    goto :goto_35

    :cond_34
    const/4 v0, 0x1

    :goto_35
    if-nez v0, :cond_46

    .line 6
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_46

    .line 7
    :cond_3e
    new-instance p1, Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;

    const-string v0, "Clear Text Traffic is blocked"

    invoke-direct {p1, v0}, Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_46
    :goto_46
    :try_start_46
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->b:Lcom/vungle/warren/network/VungleApi;

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->y:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/network/VungleApi;->pingTPAT(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_51} :catch_52

    return v3

    .line 9
    :catch_52
    sget-object p1, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    const-string v0, "Error on pinging TPAT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 10
    :catch_5b
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_70
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized q(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    const-string v1, "bundle"

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_dc

    const/4 v1, 0x0

    .line 3
    :try_start_10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1f} :catch_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_dc

    :catch_1f
    :try_start_1f
    const-string v2, "ver"

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const-string v1, "1.0"

    .line 4
    :goto_26
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/google/gson/o;

    invoke-direct {v1}, Lcom/google/gson/o;-><init>()V

    const-string v2, "make"

    .line 6
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "model"

    .line 7
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "osv"

    .line 8
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "carrier"

    const-string v4, "phone"

    .line 9
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "os"

    const-string v4, "Amazon"

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    const-string v3, "amazon"

    goto :goto_63

    :cond_61
    const-string v3, "android"

    :goto_63
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    .line 12
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 13
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string p1, "w"

    .line 14
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "h"

    .line 15
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/o;->v(Ljava/lang/String;Ljava/lang/Number;)V

    .line 16
    new-instance p1, Lcom/google/gson/o;

    invoke-direct {p1}, Lcom/google/gson/o;-><init>()V

    .line 17
    new-instance v2, Lcom/google/gson/o;

    invoke-direct {v2}, Lcom/google/gson/o;-><init>()V

    const-string v3, "vungle"

    .line 18
    invoke-virtual {p1, v3, v2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    const-string v2, "ext"

    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V
    :try_end_a4
    .catchall {:try_start_1f .. :try_end_a4} :catchall_dc

    .line 20
    :try_start_a4
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->y:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->r()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ad} :catch_ae
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_dc

    goto :goto_c9

    :catch_ae
    move-exception p1

    .line 22
    :try_start_af
    sget-object v2, Lcom/vungle/warren/VungleApiClient;->A:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot Get UserAgent. Setting Default Device UserAgent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c9
    const-string p1, "ua"

    .line 23
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->y:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object v1, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    .line 25
    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    .line 26
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->m()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->t:Ljava/lang/Boolean;
    :try_end_da
    .catchall {:try_start_af .. :try_end_da} :catchall_dc

    .line 27
    monitor-exit p0

    return-void

    :catchall_dc
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reportAd(Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->e:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 2
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->l()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    const-string v1, "request"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 6
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->p()Lcom/google/gson/o;

    move-result-object p1

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->q:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->e:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->reportAd(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 8
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportNew()Lcom/vungle/warren/network/Call;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->c:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->k:Lcom/google/gson/o;

    const-string v3, "ifa"

    invoke-virtual {v2, v3}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v2

    const-string v4, ""

    if-eqz v1, :cond_23

    .line 5
    invoke-virtual {v1}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_23
    move-object v1, v4

    :goto_24
    const-string v5, "app_id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2f

    .line 6
    invoke-virtual {v2}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v4

    :cond_2f
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->b:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/vungle/warren/network/VungleApi;->reportNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0

    .line 8
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAd(Ljava/lang/String;Ljava/lang/String;ZLcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->d:Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 2
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->l()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->p()Lcom/google/gson/o;

    move-result-object v1

    if-eqz p4, :cond_24

    const-string v2, "vision"

    .line 6
    invoke-virtual {v1, v2, p4}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    :cond_24
    const-string p4, "user"

    .line 7
    invoke-virtual {v0, p4, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 8
    new-instance p4, Lcom/google/gson/o;

    invoke-direct {p4}, Lcom/google/gson/o;-><init>()V

    .line 9
    new-instance v1, Lcom/google/gson/i;

    invoke-direct {v1}, Lcom/google/gson/i;-><init>()V

    .line 10
    invoke-virtual {v1, p1}, Lcom/google/gson/i;->u(Ljava/lang/String;)V

    const-string p1, "placements"

    .line 11
    invoke-virtual {p4, p1, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 12
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "header_bidding"

    invoke-virtual {p4, p3, p1}, Lcom/google/gson/o;->u(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4f

    const-string p1, "ad_size"

    .line 14
    invoke-virtual {p4, p1, p2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const-string p1, "request"

    .line 15
    invoke-virtual {v0, p1, p4}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 16
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->q:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/vungle/warren/VungleApiClient;->d:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Lcom/vungle/warren/network/VungleApi;->ads(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 17
    :cond_61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ri(Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->g:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 2
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->l()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    const-string v1, "request"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->b:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->g:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->ri(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method s(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/VungleApiClient;->t(Ljava/lang/String;Lcom/google/gson/o;)V

    return-void
.end method

.method public sendLog(Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->h:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->q:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/vungle/warren/network/VungleApi;->sendLog(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 3
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultIdFallbackDisabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/VungleApiClient;->w:Z

    return-void
.end method

.method u(Ljava/lang/String;ZLjava/lang/String;)Lcom/vungle/warren/network/Call;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/o;

    invoke-direct {v0}, Lcom/google/gson/o;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->l()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->l:Lcom/google/gson/o;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 4
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->p()Lcom/google/gson/o;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 5
    new-instance v1, Lcom/google/gson/o;

    invoke-direct {v1}, Lcom/google/gson/o;-><init>()V

    .line 6
    new-instance v2, Lcom/google/gson/o;

    invoke-direct {v2}, Lcom/google/gson/o;-><init>()V

    const-string v3, "reference_id"

    .line 7
    invoke-virtual {v2, v3, p1}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "is_auto_cached"

    invoke-virtual {v2, p2, p1}, Lcom/google/gson/o;->u(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "placement"

    .line 9
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    const-string p1, "ad_token"

    .line 10
    invoke-virtual {v1, p1, p3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "request"

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    .line 12
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->p:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/vungle/warren/VungleApiClient;->f:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Lcom/vungle/warren/network/VungleApi;->willPlayAd(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

###### Class com.vungle.warren.VungleApiClient.AnonymousClass1 (com.vungle.warren.VungleApiClient$1)
.class Lcom/vungle/warren/VungleApiClient$1;
.super Ljava/lang/Object;
.source "VungleApiClient.java"

# interfaces
.implements Lja/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/VungleApiClient;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/omsdk/OMInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleApiClient;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient$1;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lja/u$a;)Lja/c0;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v1

    invoke-virtual {v1}, Lja/t;->h()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient$1;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-static {v2}, Lcom/vungle/warren/VungleApiClient;->a(Lcom/vungle/warren/VungleApiClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/16 v3, 0x1f4

    const-string v4, "Retry-After"

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_72

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 5
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_69

    .line 6
    new-instance p1, Lja/c0$a;

    invoke-direct {p1}, Lja/c0$a;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object p1

    .line 8
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lja/c0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/c0$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v3}, Lja/c0$a;->g(I)Lja/c0$a;

    move-result-object p1

    sget-object v0, Lja/y;->q:Lja/y;

    .line 10
    invoke-virtual {p1, v0}, Lja/c0$a;->n(Lja/y;)Lja/c0$a;

    move-result-object p1

    const-string v0, "Server is busy"

    .line 11
    invoke-virtual {p1, v0}, Lja/c0$a;->k(Ljava/lang/String;)Lja/c0$a;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    .line 12
    invoke-static {v0}, Lja/v;->d(Ljava/lang/String;)Lja/v;

    move-result-object v0

    const-string v1, "{\"Error\":\"Retry-After\"}"

    invoke-static {v0, v1}, Lja/d0;->create(Lja/v;Ljava/lang/String;)Lja/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    return-object p1

    .line 14
    :cond_69
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient$1;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-static {v2}, Lcom/vungle/warren/VungleApiClient;->a(Lcom/vungle/warren/VungleApiClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_72
    invoke-interface {p1, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    if-eqz p1, :cond_c0

    .line 16
    invoke-virtual {p1}, Lja/c0;->d()I

    move-result v0

    const/16 v2, 0x1ad

    if-eq v0, v2, :cond_8a

    if-eq v0, v3, :cond_8a

    const/16 v2, 0x1f6

    if-eq v0, v2, :cond_8a

    const/16 v2, 0x1f7

    if-ne v0, v2, :cond_c0

    .line 17
    :cond_8a
    invoke-virtual {p1}, Lja/c0;->h()Lja/s;

    move-result-object v0

    invoke-virtual {v0, v4}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c0

    .line 19
    :try_start_98
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-lez v0, :cond_c0

    .line 20
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$1;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-static {v0}, Lcom/vungle/warren/VungleApiClient;->a(Lcom/vungle/warren/VungleApiClient;)Ljava/util/Map;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_b6} :catch_b7

    goto :goto_c0

    .line 21
    :catch_b7
    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retry-After value is not an valid value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    :goto_c0
    return-object p1
.end method

###### Class com.vungle.warren.VungleApiClient.AnonymousClass2 (com.vungle.warren.VungleApiClient$2)
.class Lcom/vungle/warren/VungleApiClient$2;
.super Ljava/lang/Object;
.source "VungleApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/VungleApiClient;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleApiClient;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient$2;->o:Lcom/vungle/warren/VungleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$2;->o:Lcom/vungle/warren/VungleApiClient;

    invoke-static {v0}, Lcom/vungle/warren/VungleApiClient;->e(Lcom/vungle/warren/VungleApiClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/warren/VungleApiClient;->d(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$2;->o:Lcom/vungle/warren/VungleApiClient;

    invoke-static {v0}, Lcom/vungle/warren/VungleApiClient;->f(Lcom/vungle/warren/VungleApiClient;)Lcom/google/gson/o;

    move-result-object v0

    const-string v1, "ua"

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient$2;->o:Lcom/vungle/warren/VungleApiClient;

    invoke-static {v2}, Lcom/vungle/warren/VungleApiClient;->c(Lcom/vungle/warren/VungleApiClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$2;->o:Lcom/vungle/warren/VungleApiClient;

    invoke-static {v0}, Lcom/vungle/warren/VungleApiClient;->c(Lcom/vungle/warren/VungleApiClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/warren/VungleApiClient;->g(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_45

    :catch_28
    move-exception v0

    .line 4
    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot Get UserAgent. Setting Default Device UserAgent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

###### Class com.vungle.warren.VungleApiClient.ClearTextTrafficException (com.vungle.warren.VungleApiClient$ClearTextTrafficException)
.class public Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;
.super Ljava/io/IOException;
.source "VungleApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearTextTrafficException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.VungleApiClient.ConnectionTypeDetail (com.vungle.warren.VungleApiClient$ConnectionTypeDetail)
.class public interface abstract annotation Lcom/vungle/warren/VungleApiClient$ConnectionTypeDetail;
.super Ljava/lang/Object;
.source "VungleApiClient.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ConnectionTypeDetail"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CDMA_1XRTT:Ljava/lang/String; = "cdma_1xrtt"

.field public static final CDMA_EVDO_0:Ljava/lang/String; = "cdma_evdo_0"

.field public static final CDMA_EVDO_A:Ljava/lang/String; = "cdma_evdo_a"

.field public static final CDMA_EVDO_B:Ljava/lang/String; = "cdma_evdo_b"

.field public static final EDGE:Ljava/lang/String; = "edge"

.field public static final GPRS:Ljava/lang/String; = "gprs"

.field public static final HRPD:Ljava/lang/String; = "hrpd"

.field public static final HSDPA:Ljava/lang/String; = "hsdpa"

.field public static final HSUPA:Ljava/lang/String; = "hsupa"

.field public static final LTE:Ljava/lang/String; = "LTE"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final WCDMA:Ljava/lang/String; = "wcdma"

###### Class com.vungle.warren.VungleApiClient.GzipRequestInterceptor (com.vungle.warren.VungleApiClient$GzipRequestInterceptor)
.class Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;
.super Ljava/lang/Object;
.source "VungleApiClient.java"

# interfaces
.implements Lja/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GzipRequestInterceptor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lja/b0;)Lja/b0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 2
    new-instance v1, Lokio/k;

    invoke-direct {v1, v0}, Lokio/k;-><init>(Lokio/t;)V

    invoke-static {v1}, Lokio/n;->b(Lokio/t;)Lokio/d;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Lja/b0;->writeTo(Lokio/d;)V

    .line 4
    invoke-interface {v1}, Lokio/t;->close()V

    .line 5
    new-instance v1, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;-><init>(Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;Lja/b0;Lokio/c;)V

    return-object v1
.end method


# virtual methods
.method public intercept(Lja/u$a;)Lja/c0;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lja/a0;->a()Lja/b0;

    move-result-object v1

    if-eqz v1, :cond_36

    const-string v1, "Content-Encoding"

    .line 3
    invoke-virtual {v0, v1}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    goto :goto_36

    .line 4
    :cond_13
    invoke-virtual {v0}, Lja/a0;->g()Lja/a0$a;

    move-result-object v2

    const-string v3, "gzip"

    .line 5
    invoke-virtual {v2, v1, v3}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lja/a0;->a()Lja/b0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;->a(Lja/b0;)Lja/b0;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lja/a0$a;->f(Ljava/lang/String;Lja/b0;)Lja/a0$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lja/a0$a;->b()Lja/a0;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_36
    :goto_36
    invoke-interface {p1, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    return-object p1
.end method

###### Class com.vungle.warren.VungleApiClient.GzipRequestInterceptor.AnonymousClass1 (com.vungle.warren.VungleApiClient$GzipRequestInterceptor$1)
.class Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;
.super Lja/b0;
.source "VungleApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;->a(Lja/b0;)Lja/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lja/b0;

.field final synthetic b:Lokio/c;

.field final synthetic c:Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;Lja/b0;Lokio/c;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->c:Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->a:Lja/b0;

    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->b:Lokio/c;

    invoke-direct {p0}, Lja/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->b:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->a:Lja/b0;

    invoke-virtual {v0}, Lja/b0;->contentType()Lja/v;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;->b:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->t()Lokio/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/d;->c3(Lokio/f;)Lokio/d;

    return-void
.end method

###### Class com.vungle.warren.VungleApiClient.WrapperFramework (com.vungle.warren.VungleApiClient$WrapperFramework)
.class public final enum Lcom/vungle/warren/VungleApiClient$WrapperFramework;
.super Ljava/lang/Enum;
.source "VungleApiClient.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapperFramework"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/warren/VungleApiClient$WrapperFramework;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum admob:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum adtoapp:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum aerserv:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum air:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum appodeal:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum cocos2dx:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum corona:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum dfp:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum fyber:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum heyzap:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum ironsource:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum marmalade:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum max:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum mopub:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum none:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum tapdaq:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum unity:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum upsight:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field public static final enum vunglehbs:Lcom/vungle/warren/VungleApiClient$WrapperFramework;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 1
    new-instance v0, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v1, "admob"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->admob:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 2
    new-instance v1, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v3, "air"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->air:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 3
    new-instance v3, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v5, "cocos2dx"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->cocos2dx:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 4
    new-instance v5, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v7, "corona"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->corona:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 5
    new-instance v7, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v9, "dfp"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->dfp:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 6
    new-instance v9, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v11, "heyzap"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->heyzap:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 7
    new-instance v11, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v13, "marmalade"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->marmalade:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 8
    new-instance v13, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v15, "mopub"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->mopub:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 9
    new-instance v15, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v14, "unity"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->unity:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 10
    new-instance v14, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v12, "fyber"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->fyber:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 11
    new-instance v12, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v10, "ironsource"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->ironsource:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 12
    new-instance v10, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v8, "upsight"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->upsight:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 13
    new-instance v8, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v6, "appodeal"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->appodeal:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 14
    new-instance v6, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v4, "aerserv"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->aerserv:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 15
    new-instance v4, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v2, "adtoapp"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->adtoapp:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 16
    new-instance v2, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v6, "tapdaq"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->tapdaq:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 17
    new-instance v6, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v4, "vunglehbs"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->vunglehbs:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 18
    new-instance v4, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v2, "max"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->max:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    .line 19
    new-instance v2, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v6, "none"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/vungle/warren/VungleApiClient$WrapperFramework;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->none:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const/16 v6, 0x13

    new-array v6, v6, [Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    .line 20
    sput-object v6, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->$VALUES:[Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/warren/VungleApiClient$WrapperFramework;
    .registers 2

    .line 1
    const-class v0, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    return-object p0
.end method

.method public static values()[Lcom/vungle/warren/VungleApiClient$WrapperFramework;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->$VALUES:[Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    invoke-virtual {v0}, [Lcom/vungle/warren/VungleApiClient$WrapperFramework;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    return-object v0
.end method
