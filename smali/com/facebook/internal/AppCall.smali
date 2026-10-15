###### Class com.facebook.internal.AppCall (com.facebook.internal.AppCall)
.class public final Lcom/facebook/internal/AppCall;
.super Ljava/lang/Object;
.source "AppCall.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/AppCall$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/internal/AppCall$Companion;

.field private static currentPendingCall:Lcom/facebook/internal/AppCall;


# instance fields
.field private final callId:Ljava/util/UUID;

.field private requestCode:I

.field private requestIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/internal/AppCall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/internal/AppCall;->Companion:Lcom/facebook/internal/AppCall$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/facebook/internal/AppCall;-><init>(ILjava/util/UUID;ILt9/g;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;)V
    .registers 4

    const-string v0, "callId"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/internal/AppCall;->requestCode:I

    .line 3
    iput-object p2, p0, Lcom/facebook/internal/AppCall;->callId:Ljava/util/UUID;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/UUID;ILt9/g;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    const-string p3, "randomUUID()"

    invoke-static {p2, p3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/AppCall;-><init>(ILjava/util/UUID;)V

    return-void
.end method

.method public static final synthetic access$getCurrentPendingCall$cp()Lcom/facebook/internal/AppCall;
    .registers 3

    const-class v0, Lcom/facebook/internal/AppCall;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    .line 1
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/internal/AppCall;->currentPendingCall:Lcom/facebook/internal/AppCall;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final synthetic access$setCurrentPendingCall$cp(Lcom/facebook/internal/AppCall;)V
    .registers 3

    const-class v0, Lcom/facebook/internal/AppCall;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1
    :cond_9
    :try_start_9
    sput-object p0, Lcom/facebook/internal/AppCall;->currentPendingCall:Lcom/facebook/internal/AppCall;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final declared-synchronized finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;
    .registers 5

    const-class v0, Lcom/facebook/internal/AppCall;

    monitor-enter v0

    :try_start_3
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1a

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    monitor-exit v0

    return-object v2

    :cond_c
    :try_start_c
    sget-object v1, Lcom/facebook/internal/AppCall;->Companion:Lcom/facebook/internal/AppCall$Companion;

    invoke-virtual {v1, p0, p1}, Lcom/facebook/internal/AppCall$Companion;->finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    :try_start_15
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object v2

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getCallId()Ljava/util/UUID;
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/facebook/internal/AppCall;->callId:Ljava/util/UUID;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getRequestCode()I
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    iget v0, p0, Lcom/facebook/internal/AppCall;->requestCode:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    return v0

    :catchall_b
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public final getRequestIntent()Landroid/content/Intent;
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/facebook/internal/AppCall;->requestIntent:Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final setPending()Z
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1
    :cond_8
    :try_start_8
    sget-object v0, Lcom/facebook/internal/AppCall;->Companion:Lcom/facebook/internal/AppCall$Companion;

    invoke-static {v0, p0}, Lcom/facebook/internal/AppCall$Companion;->access$setCurrentPendingCall(Lcom/facebook/internal/AppCall$Companion;Lcom/facebook/internal/AppCall;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public final setRequestCode(I)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    iput p1, p0, Lcom/facebook/internal/AppCall;->requestCode:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRequestIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/facebook/internal/AppCall;->requestIntent:Landroid/content/Intent;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.internal.AppCall.Companion (com.facebook.internal.AppCall$Companion)
.class public final Lcom/facebook/internal/AppCall$Companion;
.super Ljava/lang/Object;
.source "AppCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/internal/AppCall$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$setCurrentPendingCall(Lcom/facebook/internal/AppCall$Companion;Lcom/facebook/internal/AppCall;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/internal/AppCall$Companion;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z

    move-result p0

    return p0
.end method

.method private final declared-synchronized setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall$Companion;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/facebook/internal/AppCall;->access$setCurrentPendingCall$cp(Lcom/facebook/internal/AppCall;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 3
    :goto_d
    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized finishPendingCall(Ljava/util/UUID;I)Lcom/facebook/internal/AppCall;
    .registers 6

    monitor-enter p0

    :try_start_1
    const-string v0, "callId"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/facebook/internal/AppCall$Companion;->getCurrentPendingCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 2
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 3
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getRequestCode()I

    move-result p1

    if-eq p1, p2, :cond_1e

    goto :goto_23

    .line 4
    :cond_1e
    invoke-direct {p0, v1}, Lcom/facebook/internal/AppCall$Companion;->setCurrentPendingCall(Lcom/facebook/internal/AppCall;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_25

    .line 5
    monitor-exit p0

    return-object v0

    .line 6
    :cond_23
    :goto_23
    monitor-exit p0

    return-object v1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getCurrentPendingCall()Lcom/facebook/internal/AppCall;
    .registers 2

    .line 1
    invoke-static {}, Lcom/facebook/internal/AppCall;->access$getCurrentPendingCall$cp()Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
