###### Class ia.a (ia.a)
.class final Lia/a;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final o:Lia/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lia/a;

    invoke-direct {v0}, Lia/a;-><init>()V

    sput-object v0, Lia/a;->o:Lia/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
