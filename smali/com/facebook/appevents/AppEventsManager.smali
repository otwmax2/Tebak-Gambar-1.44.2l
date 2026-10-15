###### Class com.facebook.appevents.AppEventsManager (com.facebook.appevents.AppEventsManager)
.class public final Lcom/facebook/appevents/AppEventsManager;
.super Ljava/lang/Object;
.source "AppEventsManager.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/AppEventsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/AppEventsManager;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventsManager;->INSTANCE:Lcom/facebook/appevents/AppEventsManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final start()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/AppEventsManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1
    :cond_9
    :try_start_9
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 2
    new-instance v1, Lcom/facebook/appevents/AppEventsManager$start$1;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventsManager$start$1;-><init>()V

    .line 3
    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsAsync(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v1

    .line 4
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.appevents.AppEventsManager.AnonymousClass1 (com.facebook.appevents.AppEventsManager$start$1)
.class public final Lcom/facebook/appevents/AppEventsManager$start$1;
.super Ljava/lang/Object;
.source "AppEventsManager.kt"

# interfaces
.implements Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-2(Z)V

    return-void
.end method

.method public static synthetic b(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-5(Z)V

    return-void
.end method

.method public static synthetic c(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-0(Z)V

    return-void
.end method

.method public static synthetic d(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-4(Z)V

    return-void
.end method

.method public static synthetic e(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-3(Z)V

    return-void
.end method

.method public static synthetic f(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-1(Z)V

    return-void
.end method

.method private static final onSuccess$lambda-0(Z)V
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    sget-object p0, Lcom/facebook/appevents/aam/MetadataIndexer;->INSTANCE:Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {}, Lcom/facebook/appevents/aam/MetadataIndexer;->enable()V

    :cond_7
    return-void
.end method

.method private static final onSuccess$lambda-1(Z)V
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    sget-object p0, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;->INSTANCE:Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;

    invoke-static {}, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;->enable()V

    :cond_7
    return-void
.end method

.method private static final onSuccess$lambda-2(Z)V
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    sget-object p0, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->enable()V

    :cond_7
    return-void
.end method

.method private static final onSuccess$lambda-3(Z)V
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    sget-object p0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->INSTANCE:Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->enable()V

    :cond_7
    return-void
.end method

.method private static final onSuccess$lambda-4(Z)V
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    sget-object p0, Lcom/facebook/appevents/iap/InAppPurchaseManager;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseManager;

    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseManager;->enableAutoLogging()V

    :cond_7
    return-void
.end method

.method private static final onSuccess$lambda-5(Z)V
    .registers 1

    if-eqz p0, :cond_7

    .line 1
    sget-object p0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->INSTANCE:Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;

    invoke-static {}, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->enable()V

    :cond_7
    return-void
.end method


# virtual methods
.method public onError()V
    .registers 1

    return-void
.end method

.method public onSuccess(Lcom/facebook/internal/FetchedAppSettings;)V
    .registers 3

    .line 1
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/m;

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 2
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v0, Lcom/facebook/appevents/p;->a:Lcom/facebook/appevents/p;

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 3
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v0, Lcom/facebook/appevents/k;->a:Lcom/facebook/appevents/k;

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 4
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v0, Lcom/facebook/appevents/o;->a:Lcom/facebook/appevents/o;

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 5
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->IapLogging:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v0, Lcom/facebook/appevents/n;->a:Lcom/facebook/appevents/n;

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 6
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->CloudBridge:Lcom/facebook/internal/FeatureManager$Feature;

    sget-object v0, Lcom/facebook/appevents/l;->a:Lcom/facebook/appevents/l;

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    return-void
.end method

###### Class com.facebook.appevents.k (com.facebook.appevents.k)
.class public final synthetic Lcom/facebook/appevents/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/k;

    invoke-direct {v0}, Lcom/facebook/appevents/k;-><init>()V

    sput-object v0, Lcom/facebook/appevents/k;->a:Lcom/facebook/appevents/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsManager$start$1;->a(Z)V

    return-void
.end method

###### Class com.facebook.appevents.l (com.facebook.appevents.l)
.class public final synthetic Lcom/facebook/appevents/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/l;

    invoke-direct {v0}, Lcom/facebook/appevents/l;-><init>()V

    sput-object v0, Lcom/facebook/appevents/l;->a:Lcom/facebook/appevents/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsManager$start$1;->b(Z)V

    return-void
.end method

###### Class com.facebook.appevents.m (com.facebook.appevents.m)
.class public final synthetic Lcom/facebook/appevents/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/m;

    invoke-direct {v0}, Lcom/facebook/appevents/m;-><init>()V

    sput-object v0, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsManager$start$1;->c(Z)V

    return-void
.end method

###### Class com.facebook.appevents.n (com.facebook.appevents.n)
.class public final synthetic Lcom/facebook/appevents/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/n;

    invoke-direct {v0}, Lcom/facebook/appevents/n;-><init>()V

    sput-object v0, Lcom/facebook/appevents/n;->a:Lcom/facebook/appevents/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsManager$start$1;->d(Z)V

    return-void
.end method

###### Class com.facebook.appevents.o (com.facebook.appevents.o)
.class public final synthetic Lcom/facebook/appevents/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/o;

    invoke-direct {v0}, Lcom/facebook/appevents/o;-><init>()V

    sput-object v0, Lcom/facebook/appevents/o;->a:Lcom/facebook/appevents/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsManager$start$1;->e(Z)V

    return-void
.end method

###### Class com.facebook.appevents.p (com.facebook.appevents.p)
.class public final synthetic Lcom/facebook/appevents/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/p;

    invoke-direct {v0}, Lcom/facebook/appevents/p;-><init>()V

    sput-object v0, Lcom/facebook/appevents/p;->a:Lcom/facebook/appevents/p;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsManager$start$1;->f(Z)V

    return-void
.end method
