###### Class z6.g (z6.g)
.class public final Lz6/g;
.super Ljava/lang/Object;
.source "SettingsCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/g$b;
    }
.end annotation


# static fields
.field private static final c:Lz6/g$b;

.field private static final d:Lk0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final e:Lk0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d$a<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final f:Lk0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final g:Lk0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final h:Lk0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d$a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final a:Lh0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/f<",
            "Lk0/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lz6/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lz6/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz6/g$b;-><init>(Lt9/g;)V

    sput-object v0, Lz6/g;->c:Lz6/g$b;

    const-string v0, "firebase_sessions_enabled"

    .line 1
    invoke-static {v0}, Lk0/f;->a(Ljava/lang/String;)Lk0/d$a;

    move-result-object v0

    sput-object v0, Lz6/g;->d:Lk0/d$a;

    const-string v0, "firebase_sessions_sampling_rate"

    .line 2
    invoke-static {v0}, Lk0/f;->b(Ljava/lang/String;)Lk0/d$a;

    move-result-object v0

    sput-object v0, Lz6/g;->e:Lk0/d$a;

    const-string v0, "firebase_sessions_restart_timeout"

    .line 3
    invoke-static {v0}, Lk0/f;->d(Ljava/lang/String;)Lk0/d$a;

    move-result-object v0

    sput-object v0, Lz6/g;->f:Lk0/d$a;

    const-string v0, "firebase_sessions_cache_duration"

    .line 4
    invoke-static {v0}, Lk0/f;->d(Ljava/lang/String;)Lk0/d$a;

    move-result-object v0

    sput-object v0, Lz6/g;->g:Lk0/d$a;

    const-string v0, "firebase_sessions_cache_updated_time"

    .line 5
    invoke-static {v0}, Lk0/f;->e(Ljava/lang/String;)Lk0/d$a;

    move-result-object v0

    sput-object v0, Lz6/g;->h:Lk0/d$a;

    return-void
.end method

.method public constructor <init>(Lh0/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/f<",
            "Lk0/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz6/g;->a:Lh0/f;

    .line 2
    new-instance p1, Lz6/g$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lz6/g$a;-><init>(Lz6/g;Lk9/d;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0}, Lda/h;->d(Lk9/g;Ls9/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lz6/g;)Lh0/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lz6/g;->a:Lh0/f;

    return-object p0
.end method

.method public static final synthetic b(Lz6/g;Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lz6/g;->h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lz6/g;Lk0/d;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lz6/g;->l(Lk0/d;)V

    return-void
.end method

.method private final h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk0/d$a<",
            "TT;>;TT;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lz6/g$c;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lz6/g$c;

    iget v1, v0, Lz6/g$c;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lz6/g$c;->t:I

    goto :goto_18

    :cond_13
    new-instance v0, Lz6/g$c;

    invoke-direct {v0, p0, p3}, Lz6/g$c;-><init>(Lz6/g;Lk9/d;)V

    :goto_18
    iget-object p3, v0, Lz6/g$c;->r:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lz6/g$c;->t:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    :try_start_25
    invoke-static {p3}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_5d

    :catch_29
    move-exception p1

    goto :goto_47

    .line 2
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_33
    invoke-static {p3}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_36
    iget-object p3, p0, Lz6/g;->a:Lh0/f;

    new-instance v2, Lz6/g$d;

    const/4 v4, 0x0

    invoke-direct {v2, p2, p1, p0, v4}, Lz6/g$d;-><init>(Ljava/lang/Object;Lk0/d$a;Lz6/g;Lk9/d;)V

    iput v3, v0, Lz6/g$c;->t:I

    invoke-static {p3, v2, v0}, Lk0/g;->a(Lh0/f;Ls9/p;Lk9/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_44} :catch_29

    if-ne p1, v1, :cond_5d

    return-object v1

    .line 5
    :goto_47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to update cache config value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingsCache"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_5d
    :goto_5d
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method private final l(Lk0/d;)V
    .registers 9

    .line 1
    new-instance v6, Lz6/e;

    .line 2
    sget-object v0, Lz6/g;->d:Lk0/d$a;

    invoke-virtual {p1, v0}, Lk0/d;->b(Lk0/d$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    .line 3
    sget-object v0, Lz6/g;->e:Lk0/d$a;

    invoke-virtual {p1, v0}, Lk0/d;->b(Lk0/d$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Double;

    .line 4
    sget-object v0, Lz6/g;->f:Lk0/d$a;

    invoke-virtual {p1, v0}, Lk0/d;->b(Lk0/d$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    .line 5
    sget-object v0, Lz6/g;->g:Lk0/d$a;

    invoke-virtual {p1, v0}, Lk0/d;->b(Lk0/d$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 6
    sget-object v0, Lz6/g;->h:Lk0/d$a;

    invoke-virtual {p1, v0}, Lk0/d;->b(Lk0/d$a;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/Long;

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Lz6/e;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 8
    iput-object v6, p0, Lz6/g;->b:Lz6/e;

    return-void
.end method


# virtual methods
.method public final d()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lz6/g;->b:Lz6/e;

    const/4 v1, 0x0

    const-string v2, "sessionConfigs"

    if-nez v0, :cond_b

    invoke-static {v2}, Lt9/m;->p(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Lz6/e;->b()Ljava/lang/Long;

    move-result-object v0

    .line 2
    iget-object v3, p0, Lz6/g;->b:Lz6/e;

    if-nez v3, :cond_17

    invoke-static {v2}, Lt9/m;->p(Ljava/lang/String;)V

    goto :goto_18

    :cond_17
    move-object v1, v3

    :goto_18
    invoke-virtual {v1}, Lz6/e;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_38

    if-eqz v1, :cond_38

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v0, 0x3e8

    int-to-long v4, v0

    div-long/2addr v2, v4

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_38

    const/4 v0, 0x0

    return v0

    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lz6/g;->b:Lz6/e;

    if-nez v0, :cond_a

    const-string v0, "sessionConfigs"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lz6/e;->d()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lz6/g;->b:Lz6/e;

    if-nez v0, :cond_a

    const-string v0, "sessionConfigs"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lz6/e;->e()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lz6/g;->b:Lz6/e;

    if-nez v0, :cond_a

    const-string v0, "sessionConfigs"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lz6/e;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/Double;Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz6/g;->e:Lk0/d$a;

    invoke-direct {p0, v0, p1, p2}, Lz6/g;->h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public final j(Ljava/lang/Integer;Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz6/g;->g:Lk0/d$a;

    invoke-direct {p0, v0, p1, p2}, Lz6/g;->h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public final k(Ljava/lang/Long;Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz6/g;->h:Lk0/d$a;

    invoke-direct {p0, v0, p1, p2}, Lz6/g;->h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public final m(Ljava/lang/Integer;Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz6/g;->f:Lk0/d$a;

    invoke-direct {p0, v0, p1, p2}, Lz6/g;->h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public final n(Ljava/lang/Boolean;Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz6/g;->d:Lk0/d$a;

    invoke-direct {p0, v0, p1, p2}, Lz6/g;->h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class z6.g.a (z6.g$a)
.class final Lz6/g$a;
.super Lm9/k;
.source "SettingsCache.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/g;-><init>(Lh0/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lda/o0;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.settings.SettingsCache$1"
    f = "SettingsCache.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:Ljava/lang/Object;

.field t:I

.field final synthetic u:Lz6/g;


# direct methods
.method constructor <init>(Lz6/g;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/g;",
            "Lk9/d<",
            "-",
            "Lz6/g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz6/g$a;->u:Lz6/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 4
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

    new-instance p1, Lz6/g$a;

    iget-object v0, p0, Lz6/g$a;->u:Lz6/g;

    invoke-direct {p1, v0, p2}, Lz6/g$a;-><init>(Lz6/g;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lz6/g$a;->t:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object v0, p0, Lz6/g$a;->s:Ljava/lang/Object;

    check-cast v0, Lz6/g;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_35

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz6/g$a;->u:Lz6/g;

    invoke-static {p1}, Lz6/g;->a(Lz6/g;)Lh0/f;

    move-result-object v1

    invoke-interface {v1}, Lh0/f;->b()Lkotlinx/coroutines/flow/b;

    move-result-object v1

    iput-object p1, p0, Lz6/g$a;->s:Ljava/lang/Object;

    iput v2, p0, Lz6/g$a;->t:I

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/d;->f(Lkotlinx/coroutines/flow/b;Lk9/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_33

    return-object v0

    :cond_33
    move-object v0, p1

    move-object p1, v1

    :goto_35
    check-cast p1, Lk0/d;

    invoke-virtual {p1}, Lk0/d;->d()Lk0/d;

    move-result-object p1

    invoke-static {v0, p1}, Lz6/g;->c(Lz6/g;Lk0/d;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lz6/g$a;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lda/o0;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/o0;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz6/g$a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lz6/g$a;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lz6/g$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class z6.g.b (z6.g$b)
.class final Lz6/g$b;
.super Ljava/lang/Object;
.source "SettingsCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
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

    invoke-direct {p0}, Lz6/g$b;-><init>()V

    return-void
.end method

###### Class z6.g.c (z6.g$c)
.class final Lz6/g$c;
.super Lm9/d;
.source "SettingsCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/g;->h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm9/d;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.settings.SettingsCache"
    f = "SettingsCache.kt"
    l = {
        0x70
    }
    m = "updateConfigValue"
.end annotation


# instance fields
.field synthetic r:Ljava/lang/Object;

.field final synthetic s:Lz6/g;

.field t:I


# direct methods
.method constructor <init>(Lz6/g;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/g;",
            "Lk9/d<",
            "-",
            "Lz6/g$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz6/g$c;->s:Lz6/g;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lz6/g$c;->r:Ljava/lang/Object;

    iget p1, p0, Lz6/g$c;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz6/g$c;->t:I

    iget-object p1, p0, Lz6/g$c;->s:Lz6/g;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lz6/g;->b(Lz6/g;Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class z6.g.d (z6.g$d)
.class final Lz6/g$d;
.super Lm9/k;
.source "SettingsCache.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/g;->h(Lk0/d$a;Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
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

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$2"
    f = "SettingsCache.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic v:Lk0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk0/d$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic w:Lz6/g;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lk0/d$a;Lz6/g;Lk9/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lk0/d$a<",
            "TT;>;",
            "Lz6/g;",
            "Lk9/d<",
            "-",
            "Lz6/g$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz6/g$d;->u:Ljava/lang/Object;

    iput-object p2, p0, Lz6/g$d;->v:Lk0/d$a;

    iput-object p3, p0, Lz6/g$d;->w:Lz6/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 7
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

    new-instance v0, Lz6/g$d;

    iget-object v1, p0, Lz6/g$d;->u:Ljava/lang/Object;

    iget-object v2, p0, Lz6/g$d;->v:Lk0/d$a;

    iget-object v3, p0, Lz6/g$d;->w:Lz6/g;

    invoke-direct {v0, v1, v2, v3, p2}, Lz6/g$d;-><init>(Ljava/lang/Object;Lk0/d$a;Lz6/g;Lk9/d;)V

    iput-object p1, v0, Lz6/g$d;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lz6/g$d;->s:I

    if-nez v0, :cond_25

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz6/g$d;->t:Ljava/lang/Object;

    check-cast p1, Lk0/a;

    .line 2
    iget-object v0, p0, Lz6/g$d;->u:Ljava/lang/Object;

    if-eqz v0, :cond_18

    .line 3
    iget-object v1, p0, Lz6/g$d;->v:Lk0/d$a;

    invoke-virtual {p1, v1, v0}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    goto :goto_1d

    .line 4
    :cond_18
    iget-object v0, p0, Lz6/g$d;->v:Lk0/d$a;

    invoke-virtual {p1, v0}, Lk0/a;->h(Lk0/d$a;)Ljava/lang/Object;

    .line 5
    :goto_1d
    iget-object v0, p0, Lz6/g$d;->w:Lz6/g;

    invoke-static {v0, p1}, Lz6/g;->c(Lz6/g;Lk0/d;)V

    .line 6
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lk0/a;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lz6/g$d;->l(Lk0/a;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lk0/a;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/a;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz6/g$d;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lz6/g$d;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lz6/g$d;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
