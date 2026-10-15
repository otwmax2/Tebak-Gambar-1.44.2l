###### Class b2.i (b2.i)
.class Lb2/i;
.super Ljava/lang/Object;
.source "EngineRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Le2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/i$a;,
        Lb2/i$b;
    }
.end annotation


# instance fields
.field private final o:Lv1/i;

.field private final p:Lb2/i$a;

.field private final q:Lb2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "***>;"
        }
    .end annotation
.end field

.field private r:Lb2/i$b;

.field private volatile s:Z


# direct methods
.method public constructor <init>(Lb2/i$a;Lb2/a;Lv1/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/i$a;",
            "Lb2/a<",
            "***>;",
            "Lv1/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb2/i;->p:Lb2/i$a;

    .line 3
    iput-object p2, p0, Lb2/i;->q:Lb2/a;

    .line 4
    sget-object p1, Lb2/i$b;->o:Lb2/i$b;

    iput-object p1, p0, Lb2/i;->r:Lb2/i$b;

    .line 5
    iput-object p3, p0, Lb2/i;->o:Lv1/i;

    return-void
.end method

.method private c()Lb2/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb2/i;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-direct {p0}, Lb2/i;->d()Lb2/l;

    move-result-object v0

    return-object v0

    .line 3
    :cond_b
    invoke-direct {p0}, Lb2/i;->e()Lb2/l;

    move-result-object v0

    return-object v0
.end method

.method private d()Lb2/l;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lb2/i;->q:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->f()Lb2/l;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_26

    :catch_7
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "EngineRunnable"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception decoding result from cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-nez v0, :cond_2e

    .line 4
    iget-object v0, p0, Lb2/i;->q:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->h()Lb2/l;

    move-result-object v0

    :cond_2e
    return-object v0
.end method

.method private e()Lb2/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/i;->q:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->d()Lb2/l;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lb2/i;->r:Lb2/i$b;

    sget-object v1, Lb2/i$b;->o:Lb2/i$b;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private g(Lb2/l;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lb2/i;->p:Lb2/i$a;

    invoke-interface {v0, p1}, Lt2/g;->d(Lb2/l;)V

    return-void
.end method

.method private h(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lb2/i;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    sget-object p1, Lb2/i$b;->p:Lb2/i$b;

    iput-object p1, p0, Lb2/i;->r:Lb2/i$b;

    .line 3
    iget-object p1, p0, Lb2/i;->p:Lb2/i$a;

    invoke-interface {p1, p0}, Lb2/i$a;->c(Lb2/i;)V

    goto :goto_15

    .line 4
    :cond_10
    iget-object v0, p0, Lb2/i;->p:Lb2/i$a;

    invoke-interface {v0, p1}, Lt2/g;->a(Ljava/lang/Exception;)V

    :goto_15
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lb2/i;->o:Lv1/i;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb2/i;->s:Z

    .line 2
    iget-object v0, p0, Lb2/i;->q:Lb2/a;

    invoke-virtual {v0}, Lb2/a;->c()V

    return-void
.end method

.method public run()V
    .registers 6

    const-string v0, "EngineRunnable"

    .line 1
    iget-boolean v1, p0, Lb2/i;->s:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2
    :try_start_9
    invoke-direct {p0}, Lb2/i;->c()Lb2/l;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_d} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_11

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_30

    :catch_11
    move-exception v3

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "Exception decoding"

    .line 4
    invoke-static {v0, v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    move-object v0, v3

    goto :goto_30

    :catch_1f
    move-exception v3

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "Out Of Memory Error decoding"

    .line 6
    invoke-static {v0, v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :cond_2b
    new-instance v0, Lb2/j;

    invoke-direct {v0, v3}, Lb2/j;-><init>(Ljava/lang/Error;)V

    .line 8
    :goto_30
    iget-boolean v1, p0, Lb2/i;->s:Z

    if-eqz v1, :cond_3a

    if-eqz v2, :cond_39

    .line 9
    invoke-interface {v2}, Lb2/l;->b()V

    :cond_39
    return-void

    :cond_3a
    if-nez v2, :cond_40

    .line 10
    invoke-direct {p0, v0}, Lb2/i;->h(Ljava/lang/Exception;)V

    goto :goto_43

    .line 11
    :cond_40
    invoke-direct {p0, v2}, Lb2/i;->g(Lb2/l;)V

    :goto_43
    return-void
.end method

###### Class b2.i.a (b2.i$a)
.class interface abstract Lb2/i$a;
.super Ljava/lang/Object;
.source "EngineRunnable.java"

# interfaces
.implements Lt2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract c(Lb2/i;)V
.end method

###### Class b2.i.b (b2.i$b)
.class final enum Lb2/i$b;
.super Ljava/lang/Enum;
.source "EngineRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb2/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lb2/i$b;

.field public static final enum p:Lb2/i$b;

.field private static final synthetic q:[Lb2/i$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lb2/i$b;

    const-string v1, "CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb2/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb2/i$b;->o:Lb2/i$b;

    .line 2
    new-instance v1, Lb2/i$b;

    const-string v3, "SOURCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb2/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb2/i$b;->p:Lb2/i$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lb2/i$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lb2/i$b;->q:[Lb2/i$b;

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

.method public static valueOf(Ljava/lang/String;)Lb2/i$b;
    .registers 2

    .line 1
    const-class v0, Lb2/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb2/i$b;

    return-object p0
.end method

.method public static values()[Lb2/i$b;
    .registers 1

    .line 1
    sget-object v0, Lb2/i$b;->q:[Lb2/i$b;

    invoke-virtual {v0}, [Lb2/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb2/i$b;

    return-object v0
.end method
