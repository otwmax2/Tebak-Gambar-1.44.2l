###### Class com.facebook.internal.instrument.crashshield.CrashShieldHandler (com.facebook.internal.instrument.crashshield.CrashShieldHandler)
.class public final Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;
.super Ljava/lang/Object;
.source "CrashShieldHandler.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;

.field private static final crashingObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->INSTANCE:Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->crashingObjects:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disable()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->enabled:Z

    return-void
.end method

.method public static final enable()V
    .registers 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->enabled:Z

    return-void
.end method

.method public static final handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "o"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->enabled:Z

    if-nez v0, :cond_a

    return-void

    .line 2
    :cond_a
    sget-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->crashingObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object p1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 4
    sget-object p1, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->INSTANCE:Lcom/facebook/internal/instrument/ExceptionAnalyzer;

    invoke-static {p0}, Lcom/facebook/internal/instrument/ExceptionAnalyzer;->execute(Ljava/lang/Throwable;)V

    .line 5
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Builder;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentData$Builder;

    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->build(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/internal/instrument/InstrumentData;->save()V

    .line 6
    :cond_27
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->scheduleCrashInDebug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final isDebug()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isObjectCrashing(Ljava/lang/Object;)Z
    .registers 2

    const-string v0, "o"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->crashingObjects:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final methodFinished(Ljava/lang/Object;)V
    .registers 1

    return-void
.end method

.method public static final reset()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->resetCrashingObjects()V

    return-void
.end method

.method public static final resetCrashingObjects()V
    .registers 1

    .line 1
    sget-object v0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->crashingObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static final scheduleCrashInDebug(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance v1, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler$scheduleCrashInDebug$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler$scheduleCrashInDebug$1;-><init>(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

###### Class com.facebook.internal.instrument.crashshield.CrashShieldHandler.AnonymousClass1 (com.facebook.internal.instrument.crashshield.CrashShieldHandler$scheduleCrashInDebug$1)
.class public final Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler$scheduleCrashInDebug$1;
.super Ljava/lang/Object;
.source "CrashShieldHandler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->scheduleCrashInDebug(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler$scheduleCrashInDebug$1;->$e:Ljava/lang/Throwable;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler$scheduleCrashInDebug$1;->$e:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
