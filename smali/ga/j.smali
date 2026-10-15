###### Class ga.j (ga.j)
.class public final Lga/j;
.super Ljava/lang/Object;
.source "SafeCollector.kt"


# static fields
.field private static final a:Ls9/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/q<",
            "Lkotlinx/coroutines/flow/c<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Lga/j$a;->x:Lga/j$a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lt9/c0;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls9/q;

    sput-object v0, Lga/j;->a:Ls9/q;

    return-void
.end method

.method public static final synthetic a()Ls9/q;
    .registers 1

    .line 1
    sget-object v0, Lga/j;->a:Ls9/q;

    return-object v0
.end method

###### Class ga.j.a (ga.j$a)
.class final synthetic Lga/j$a;
.super Lt9/j;
.source "SafeCollector.kt"

# interfaces
.implements Ls9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/j;",
        "Ls9/q<",
        "Lkotlinx/coroutines/flow/c<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final x:Lga/j$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lga/j$a;

    invoke-direct {v0}, Lga/j$a;-><init>()V

    sput-object v0, Lga/j$a;->x:Lga/j$a;

    return-void
.end method

.method constructor <init>()V
    .registers 7

    const-class v2, Lkotlinx/coroutines/flow/c;

    const/4 v1, 0x3

    const-string v3, "emit"

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lt9/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p3, Lk9/d;

    invoke-virtual {p0, p1, p2, p3}, Lga/j$a;->l(Lkotlinx/coroutines/flow/c;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lkotlinx/coroutines/flow/c;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/flow/c;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
