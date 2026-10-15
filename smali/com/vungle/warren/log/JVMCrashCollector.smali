###### Class com.vungle.warren.log.JVMCrashCollector (com.vungle.warren.log.JVMCrashCollector)
.class Lcom/vungle/warren/log/JVMCrashCollector;
.super Ljava/lang/Object;
.source "JVMCrashCollector.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/log/JVMCrashCollector;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/log/JVMCrashCollector;->b:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/log/JVMCrashCollector;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/JVMCrashCollector;->c:Ljava/lang/String;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/JVMCrashCollector;->b:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    invoke-interface {v0}, Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;->isCrashReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_50

    if-eqz p1, :cond_50

    if-eqz p2, :cond_50

    const/4 v0, 0x0

    move-object v1, p2

    const/4 v2, 0x0

    :goto_f
    if-eqz v1, :cond_31

    .line 2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 3
    array-length v4, v3

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_2c

    aget-object v6, v3, v5

    .line 4
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vungle/warren/log/JVMCrashCollector;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v2, 0x1

    goto :goto_2c

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 5
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_f

    :cond_31
    if-eqz v2, :cond_50

    .line 6
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 9
    iget-object v3, p0, Lcom/vungle/warren/log/JVMCrashCollector;->b:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    sget-object v4, Lcom/vungle/warren/VungleLogger$LoggerLevel;->CRASH:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v5, "crash"

    invoke-interface/range {v3 .. v8}, Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;->saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_50
    iget-object v0, p0, Lcom/vungle/warren/log/JVMCrashCollector;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_57

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_57
    return-void
.end method
