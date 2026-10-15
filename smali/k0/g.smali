###### Class k0.g (k0.g)
.class public final Lk0/g;
.super Ljava/lang/Object;
.source "Preferences.kt"


# direct methods
.method public static final a(Lh0/f;Ls9/p;Lk9/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/f<",
            "Lk0/d;",
            ">;",
            "Ls9/p<",
            "-",
            "Lk0/a;",
            "-",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lk9/d<",
            "-",
            "Lk0/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk0/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lk0/g$a;-><init>(Ls9/p;Lk9/d;)V

    invoke-interface {p0, v0, p2}, Lh0/f;->a(Ls9/p;Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class k0.g.a (k0.g$a)
.class final Lk0/g$a;
.super Lm9/k;
.source "Preferences.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/g;->a(Lh0/f;Ls9/p;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lk0/d;",
        "Lk9/d<",
        "-",
        "Lk0/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "androidx.datastore.preferences.core.PreferencesKt$edit$2"
    f = "Preferences.kt"
    l = {
        0x149
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "Lk0/a;",
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
.method constructor <init>(Ls9/p;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/p<",
            "-",
            "Lk0/a;",
            "-",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lk9/d<",
            "-",
            "Lk0/g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk0/g$a;->u:Ls9/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lk0/g$a;

    iget-object v1, p0, Lk0/g$a;->u:Ls9/p;

    invoke-direct {v0, v1, p2}, Lk0/g$a;-><init>(Ls9/p;Lk9/d;)V

    iput-object p1, v0, Lk0/g$a;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lk0/g$a;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object v0, p0, Lk0/g$a;->t:Ljava/lang/Object;

    check-cast v0, Lk0/a;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_34

    .line 2
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1b
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lk0/g$a;->t:Ljava/lang/Object;

    check-cast p1, Lk0/d;

    .line 4
    invoke-virtual {p1}, Lk0/d;->c()Lk0/a;

    move-result-object p1

    iget-object v1, p0, Lk0/g$a;->u:Ls9/p;

    iput-object p1, p0, Lk0/g$a;->t:Ljava/lang/Object;

    iput v2, p0, Lk0/g$a;->s:I

    invoke-interface {v1, p1, p0}, Ls9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_33

    return-object v0

    :cond_33
    move-object v0, p1

    :goto_34
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lk0/d;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lk0/g$a;->l(Lk0/d;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lk0/d;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/d;",
            "Lk9/d<",
            "-",
            "Lk0/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lk0/g$a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lk0/g$a;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lk0/g$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
