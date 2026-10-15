###### Class com.google.ads.mediation.vungle.b (com.google.ads.mediation.vungle.b)
.class public Lcom/google/ads/mediation/vungle/b;
.super Ljava/lang/Object;
.source "VungleInitializer.java"

# interfaces
.implements Lcom/vungle/warren/InitCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/vungle/b$d;
    }
.end annotation


# static fields
.field private static final d:Lcom/google/ads/mediation/vungle/b;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/mediation/vungle/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/ads/mediation/vungle/b;

    invoke-direct {v0}, Lcom/google/ads/mediation/vungle/b;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/vungle/b;->d:Lcom/google/ads/mediation/vungle/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/ads/mediation/vungle/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/mediation/vungle/b;->c:Landroid/os/Handler;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/vungle/b;->b:Ljava/util/ArrayList;

    .line 5
    sget-object v0, Lcom/vungle/warren/VungleApiClient$WrapperFramework;->admob:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

    const-string v1, "6.10.2.0"

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/vungle/warren/Plugin;->addWrapperInfo(Lcom/vungle/warren/VungleApiClient$WrapperFramework;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/mediation/vungle/b;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/vungle/b;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static b()Lcom/google/ads/mediation/vungle/b;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/ads/mediation/vungle/b;->d:Lcom/google/ads/mediation/vungle/b;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/b$d;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {p3}, Lcom/google/ads/mediation/vungle/b$d;->onInitializeSuccess()V

    return-void

    .line 3
    :cond_a
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_19
    new-instance v0, Lcom/google/ads/mediation/vungle/b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/mediation/vungle/b$a;-><init>(Lcom/google/ads/mediation/vungle/b;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/vungle/mediation/VungleNetworkSettings;->setVungleSettingsChangedListener(Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;)V

    .line 6
    invoke-static {}, Lcom/vungle/mediation/VungleNetworkSettings;->getVungleSettings()Lcom/vungle/warren/VungleSettings;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2, p0, v0}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V

    .line 8
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onError(Lcom/vungle/warren/error/VungleException;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/warren/error/VungleException;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/mediation/vungle/b$c;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/mediation/vungle/b$c;-><init>(Lcom/google/ads/mediation/vungle/b;Lcom/google/android/gms/ads/AdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object p1, p0, Lcom/google/ads/mediation/vungle/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/mediation/vungle/b$b;

    invoke-direct {v1, p0}, Lcom/google/ads/mediation/vungle/b$b;-><init>(Lcom/google/ads/mediation/vungle/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

###### Class com.google.ads.mediation.vungle.b.a (com.google.ads.mediation.vungle.b$a)
.class Lcom/google/ads/mediation/vungle/b$a;
.super Ljava/lang/Object;
.source "VungleInitializer.java"

# interfaces
.implements Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/b;->c(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/b$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/ads/mediation/vungle/b;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/b;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/b$a;->c:Lcom/google/ads/mediation/vungle/b;

    iput-object p2, p0, Lcom/google/ads/mediation/vungle/b$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/mediation/vungle/b$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVungleSettingsChanged(Lcom/vungle/warren/VungleSettings;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/b$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/mediation/vungle/b$a;->c:Lcom/google/ads/mediation/vungle/b;

    invoke-static {v0, v1, v2, p1}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V

    return-void
.end method

###### Class com.google.ads.mediation.vungle.b.RunnableC0104b (com.google.ads.mediation.vungle.b$b)
.class Lcom/google/ads/mediation/vungle/b$b;
.super Ljava/lang/Object;
.source "VungleInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/b;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/ads/mediation/vungle/b;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/b$b;->o:Lcom/google/ads/mediation/vungle/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/mediation/VungleConsent;->getCurrentVungleConsent()Lcom/vungle/warren/Vungle$Consent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {}, Lcom/vungle/mediation/VungleConsent;->getCurrentVungleConsent()Lcom/vungle/warren/Vungle$Consent;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/vungle/mediation/VungleConsent;->getCurrentVungleConsentMessageVersion()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    .line 5
    :cond_11
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b$b;->o:Lcom/google/ads/mediation/vungle/b;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/b;->a(Lcom/google/ads/mediation/vungle/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/vungle/b$d;

    .line 6
    invoke-interface {v1}, Lcom/google/ads/mediation/vungle/b$d;->onInitializeSuccess()V

    goto :goto_1b

    .line 7
    :cond_2b
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b$b;->o:Lcom/google/ads/mediation/vungle/b;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/b;->a(Lcom/google/ads/mediation/vungle/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

###### Class com.google.ads.mediation.vungle.b.c (com.google.ads.mediation.vungle.b$c)
.class Lcom/google/ads/mediation/vungle/b$c;
.super Ljava/lang/Object;
.source "VungleInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/b;->onError(Lcom/vungle/warren/error/VungleException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/AdError;

.field final synthetic p:Lcom/google/ads/mediation/vungle/b;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/vungle/b;Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/b$c;->p:Lcom/google/ads/mediation/vungle/b;

    iput-object p2, p0, Lcom/google/ads/mediation/vungle/b$c;->o:Lcom/google/android/gms/ads/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b$c;->p:Lcom/google/ads/mediation/vungle/b;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/b;->a(Lcom/google/ads/mediation/vungle/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/vungle/b$d;

    .line 2
    iget-object v2, p0, Lcom/google/ads/mediation/vungle/b$c;->o:Lcom/google/android/gms/ads/AdError;

    invoke-interface {v1, v2}, Lcom/google/ads/mediation/vungle/b$d;->onInitializeError(Lcom/google/android/gms/ads/AdError;)V

    goto :goto_a

    .line 3
    :cond_1c
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/b$c;->p:Lcom/google/ads/mediation/vungle/b;

    invoke-static {v0}, Lcom/google/ads/mediation/vungle/b;->a(Lcom/google/ads/mediation/vungle/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

###### Class com.google.ads.mediation.vungle.b.d (com.google.ads.mediation.vungle.b$d)
.class public interface abstract Lcom/google/ads/mediation/vungle/b$d;
.super Ljava/lang/Object;
.source "VungleInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/vungle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract onInitializeError(Lcom/google/android/gms/ads/AdError;)V
.end method

.method public abstract onInitializeSuccess()V
.end method
