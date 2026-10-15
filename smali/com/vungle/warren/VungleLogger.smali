###### Class com.vungle.warren.VungleLogger (com.vungle.warren.VungleLogger)
.class public Lcom/vungle/warren/VungleLogger;
.super Ljava/lang/Object;
.source "VungleLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/VungleLogger$LoggerLevel;
    }
.end annotation


# static fields
.field public static final LOGGER_MAX_ENTRIES:I = 0x64

.field private static final c:Ljava/lang/String; = "VungleLogger"

.field private static final d:Lcom/vungle/warren/VungleLogger;


# instance fields
.field private a:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field private b:Lcom/vungle/warren/log/LogManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/vungle/warren/VungleLogger;

    invoke-direct {v0}, Lcom/vungle/warren/VungleLogger;-><init>()V

    sput-object v0, Lcom/vungle/warren/VungleLogger;->d:Lcom/vungle/warren/VungleLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    iput-object v0, p0, Lcom/vungle/warren/VungleLogger;->a:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    return-void
.end method

.method private static a(Lcom/vungle/warren/VungleLogger$LoggerLevel;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/VungleLogger$LoggerLevel;->access$000(Lcom/vungle/warren/VungleLogger$LoggerLevel;)I

    move-result p0

    sget-object v0, Lcom/vungle/warren/VungleLogger;->d:Lcom/vungle/warren/VungleLogger;

    iget-object v0, v0, Lcom/vungle/warren/VungleLogger;->a:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0}, Lcom/vungle/warren/VungleLogger$LoggerLevel;->access$000(Lcom/vungle/warren/VungleLogger$LoggerLevel;)I

    move-result v0

    if-lt p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger;->d:Lcom/vungle/warren/VungleLogger;

    iget-object v0, v0, Lcom/vungle/warren/VungleLogger;->b:Lcom/vungle/warren/log/LogManager;

    if-nez v0, :cond_e

    .line 2
    sget-object p0, Lcom/vungle/warren/VungleLogger;->c:Ljava/lang/String;

    const-string p1, "Please setup Logger first."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    invoke-virtual {v0, p0, p1}, Lcom/vungle/warren/log/LogManager;->addCustomData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger;->d:Lcom/vungle/warren/VungleLogger;

    iget-object v1, v0, Lcom/vungle/warren/VungleLogger;->b:Lcom/vungle/warren/log/LogManager;

    if-nez v1, :cond_e

    .line 2
    sget-object p0, Lcom/vungle/warren/VungleLogger;->c:Ljava/lang/String;

    const-string p1, "Please setup Logger first."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    invoke-virtual {v1}, Lcom/vungle/warren/log/LogManager;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    .line 4
    :cond_15
    invoke-static {p0}, Lcom/vungle/warren/VungleLogger;->a(Lcom/vungle/warren/VungleLogger$LoggerLevel;)Z

    move-result v1

    if-nez v1, :cond_1c

    return-void

    .line 5
    :cond_1c
    iget-object v2, v0, Lcom/vungle/warren/VungleLogger;->b:Lcom/vungle/warren/log/LogManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/vungle/warren/log/LogManager;->saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static c(Lcom/vungle/warren/log/LogManager;Lcom/vungle/warren/VungleLogger$LoggerLevel;I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger;->d:Lcom/vungle/warren/VungleLogger;

    iput-object p1, v0, Lcom/vungle/warren/VungleLogger;->a:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 2
    iput-object p0, v0, Lcom/vungle/warren/VungleLogger;->b:Lcom/vungle/warren/log/LogManager;

    .line 3
    invoke-virtual {p0, p2}, Lcom/vungle/warren/log/LogManager;->setMaxEntries(I)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lcom/vungle/warren/VungleLogger;->b(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_1e

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1e
    invoke-static {p2, p3}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->ERROR:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lcom/vungle/warren/VungleLogger;->b(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_1e

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1e
    invoke-static {p2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->INFO:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lcom/vungle/warren/VungleLogger;->b(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_1e

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1e
    invoke-static {p2, p3}, Lcom/vungle/warren/VungleLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeCustomData(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger;->d:Lcom/vungle/warren/VungleLogger;

    iget-object v0, v0, Lcom/vungle/warren/VungleLogger;->b:Lcom/vungle/warren/log/LogManager;

    if-nez v0, :cond_e

    .line 2
    sget-object p0, Lcom/vungle/warren/VungleLogger;->c:Ljava/lang/String;

    const-string v0, "Please setup Logger first."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    invoke-virtual {v0, p0}, Lcom/vungle/warren/log/LogManager;->removeCustomData(Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->VERBOSE:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lcom/vungle/warren/VungleLogger;->b(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_1e

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1e
    invoke-static {p2, p3}, Lcom/vungle/warren/VungleLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->WARNING:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lcom/vungle/warren/VungleLogger;->b(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_1e

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1e
    invoke-static {p2, p3}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.VungleLogger.LoggerLevel (com.vungle.warren.VungleLogger$LoggerLevel)
.class public final enum Lcom/vungle/warren/VungleLogger$LoggerLevel;
.super Ljava/lang/Enum;
.source "VungleLogger.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggerLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/warren/VungleLogger$LoggerLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum CRASH:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum DEBUG:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum ERROR:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum INFO:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum VERBOSE:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum WARNING:Lcom/vungle/warren/VungleLogger$LoggerLevel;


# instance fields
.field private level:I

.field private levelString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const-string v3, "verbose"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->VERBOSE:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 2
    new-instance v1, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    const-string v5, "debug"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 3
    new-instance v3, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v5, "INFO"

    const/4 v6, 0x2

    const-string v7, "info"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/vungle/warren/VungleLogger$LoggerLevel;->INFO:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 4
    new-instance v5, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v7, "WARNING"

    const/4 v8, 0x3

    const-string v9, "warn"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/vungle/warren/VungleLogger$LoggerLevel;->WARNING:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 5
    new-instance v7, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    const-string v11, "error"

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/vungle/warren/VungleLogger$LoggerLevel;->ERROR:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 6
    new-instance v9, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v11, "CRASH"

    const/4 v12, 0x5

    const-string v13, "crash"

    invoke-direct {v9, v11, v12, v12, v13}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/vungle/warren/VungleLogger$LoggerLevel;->CRASH:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/vungle/warren/VungleLogger$LoggerLevel;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/vungle/warren/VungleLogger$LoggerLevel;->$VALUES:[Lcom/vungle/warren/VungleLogger$LoggerLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->level:I

    .line 3
    iput-object p4, p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->levelString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/VungleLogger$LoggerLevel;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->level:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/warren/VungleLogger$LoggerLevel;
    .registers 2

    .line 1
    const-class v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    return-object p0
.end method

.method public static values()[Lcom/vungle/warren/VungleLogger$LoggerLevel;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->$VALUES:[Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-virtual {v0}, [Lcom/vungle/warren/VungleLogger$LoggerLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/warren/VungleLogger$LoggerLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->levelString:Ljava/lang/String;

    return-object v0
.end method
