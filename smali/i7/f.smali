###### Class i7.f (i7.f)
.class public abstract Li7/f;
.super Ljava/lang/Exception;
.source "ReaderException.java"


# static fields
.field protected static final o:Z

.field protected static final p:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "surefire.test.class.path"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    sput-boolean v0, Li7/f;->o:Z

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 2
    sput-object v0, Li7/f;->p:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
