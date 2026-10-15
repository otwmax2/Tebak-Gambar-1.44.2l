###### Class x6.g0 (x6.g0)
.class public final Lx6/g0;
.super Ljava/lang/Object;
.source "SessionLifecycleClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/g0$a;,
        Lx6/g0$b;
    }
.end annotation


# static fields
.field public static final f:Lx6/g0$b;


# instance fields
.field private final a:Lk9/g;

.field private b:Landroid/os/Messenger;

.field private c:Z

.field private final d:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lx6/g0$d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx6/g0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx6/g0$b;-><init>(Lt9/g;)V

    sput-object v0, Lx6/g0;->f:Lx6/g0$b;

    return-void
.end method

.method public constructor <init>(Lk9/g;)V
    .registers 3

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6/g0;->a:Lk9/g;

    .line 2
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object p1, p0, Lx6/g0;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 3
    new-instance p1, Lx6/g0$d;

    invoke-direct {p1, p0}, Lx6/g0$d;-><init>(Lx6/g0;)V

    iput-object p1, p0, Lx6/g0;->e:Lx6/g0$d;

    return-void
.end method

.method public static final synthetic a(Lx6/g0;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-direct {p0}, Lx6/g0;->j()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lx6/g0;Ljava/util/List;I)Landroid/os/Message;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lx6/g0;->l(Ljava/util/List;I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lx6/g0;)Ljava/util/concurrent/LinkedBlockingDeque;
    .registers 1

    .line 1
    iget-object p0, p0, Lx6/g0;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object p0
.end method

.method public static final synthetic d(Lx6/g0;Ljava/util/List;)Lda/x1;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx6/g0;->o(Ljava/util/List;)Lda/x1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lx6/g0;Landroid/os/Message;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx6/g0;->p(Landroid/os/Message;)V

    return-void
.end method

.method public static final synthetic f(Lx6/g0;Landroid/os/Messenger;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lx6/g0;->b:Landroid/os/Messenger;

    return-void
.end method

.method public static final synthetic g(Lx6/g0;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lx6/g0;->c:Z

    return-void
.end method

.method private final j()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lx6/g0;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    return-object v0
.end method

.method private final l(Ljava/util/List;I)Landroid/os/Message;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;I)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Message;

    .line 3
    iget v2, v2, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 4
    :cond_23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2f

    const/4 p1, 0x0

    goto :goto_5a

    .line 6
    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    :goto_39
    move-object p1, p2

    goto :goto_5a

    .line 8
    :cond_3b
    move-object v0, p2

    check-cast v0, Landroid/os/Message;

    .line 9
    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    .line 10
    :cond_42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    move-object v3, v2

    check-cast v3, Landroid/os/Message;

    .line 12
    invoke-virtual {v3}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_53

    move-object p2, v2

    move-wide v0, v3

    .line 13
    :cond_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_39

    .line 14
    :goto_5a
    check-cast p1, Landroid/os/Message;

    return-object p1
.end method

.method private final m(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lx6/g0;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SessionLifecycleClient"

    if-eqz v0, :cond_2f

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queued message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Queue size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lx6/g0;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 3
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enqueue message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Dropping."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-void
.end method

.method private final n(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lx6/g0;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, p1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    const-string v1, "obtain(null, messageCode, 0, 0)"

    invoke-static {p1, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0, v0}, Lx6/g0;->o(Ljava/util/List;)Lda/x1;

    return-void
.end method

.method private final o(Ljava/util/List;)Lda/x1;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;)",
            "Lda/x1;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx6/g0;->a:Lk9/g;

    invoke-static {v0}, Lda/p0;->a(Lk9/g;)Lda/o0;

    move-result-object v1

    new-instance v4, Lx6/g0$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lx6/g0$c;-><init>(Lx6/g0;Ljava/util/List;Lk9/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lda/h;->b(Lda/o0;Lk9/g;Lda/q0;Ls9/p;ILjava/lang/Object;)Lda/x1;

    move-result-object p1

    return-object p1
.end method

.method private final p(Landroid/os/Message;)V
    .registers 6

    const-string v0, "SessionLifecycleClient"

    .line 1
    iget-object v1, p0, Lx6/g0;->b:Landroid/os/Messenger;

    if-eqz v1, :cond_44

    .line 2
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending lifecycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lx6/g0;->b:Landroid/os/Messenger;

    if-eqz v1, :cond_47

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_28} :catch_29

    goto :goto_47

    :catch_29
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to deliver message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-direct {p0, p1}, Lx6/g0;->m(Landroid/os/Message;)V

    goto :goto_47

    .line 6
    :cond_44
    invoke-direct {p0, p1}, Lx6/g0;->m(Landroid/os/Message;)V

    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public final h()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lx6/g0;->n(I)V

    return-void
.end method

.method public final i()V
    .registers 5

    .line 1
    sget-object v0, Lx6/h0;->a:Lx6/h0$a;

    invoke-virtual {v0}, Lx6/h0$a;->a()Lx6/h0;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lx6/g0$a;

    iget-object v3, p0, Lx6/g0;->a:Lk9/g;

    invoke-direct {v2, v3}, Lx6/g0$a;-><init>(Lk9/g;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 3
    iget-object v2, p0, Lx6/g0;->e:Lx6/g0$d;

    .line 4
    invoke-interface {v0, v1, v2}, Lx6/h0;->a(Landroid/os/Messenger;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final k()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lx6/g0;->n(I)V

    return-void
.end method

###### Class x6.g0.a (x6.g0$a)
.class public final Lx6/g0$a;
.super Landroid/os/Handler;
.source "SessionLifecycleClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lk9/g;


# direct methods
.method public constructor <init>(Lk9/g;)V
    .registers 3

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p1, p0, Lx6/g0$a;->a:Lk9/g;

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session update received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionLifecycleClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lx6/g0$a;->a:Lk9/g;

    invoke-static {v0}, Lda/p0;->a(Lk9/g;)Lda/o0;

    move-result-object v1

    new-instance v4, Lx6/g0$a$a;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lx6/g0$a$a;-><init>(Ljava/lang/String;Lk9/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lda/h;->b(Lda/o0;Lk9/g;Lda/q0;Ls9/p;ILjava/lang/Object;)Lda/x1;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_18

    const-string v0, "SessionUpdateExtra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    :cond_18
    const-string p1, ""

    .line 3
    :cond_1a
    invoke-direct {p0, p1}, Lx6/g0$a;->a(Ljava/lang/String;)V

    goto :goto_37

    .line 4
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unexpected event from the SessionLifecycleService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionLifecycleClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_37
    return-void
.end method

###### Class x6.g0.a.C0297a (x6.g0$a$a)
.class final Lx6/g0$a$a;
.super Lm9/k;
.source "SessionLifecycleClient.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/g0$a;->a(Ljava/lang/String;)V
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
    c = "com.google.firebase.sessions.SessionLifecycleClient$ClientUpdateHandler$handleSessionUpdate$1"
    f = "SessionLifecycleClient.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field final synthetic t:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk9/d<",
            "-",
            "Lx6/g0$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/g0$a$a;->t:Ljava/lang/String;

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

    new-instance p1, Lx6/g0$a$a;

    iget-object v0, p0, Lx6/g0$a$a;->t:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lx6/g0$a$a;-><init>(Ljava/lang/String;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx6/g0$a$a;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_25

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Ly6/a;->a:Ly6/a;

    iput v2, p0, Lx6/g0$a$a;->s:I

    invoke-virtual {p1, p0}, Ly6/a;->c(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    :cond_25
    :goto_25
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lx6/g0$a$a;->t:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/b;

    .line 6
    new-instance v2, Ly6/b$b;

    invoke-direct {v2, v0}, Ly6/b$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ly6/b;->a(Ly6/b$b;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ly6/b;->c()Ly6/b$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of new session "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionLifecycleClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 8
    :cond_68
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lx6/g0$a$a;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lx6/g0$a$a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lx6/g0$a$a;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lx6/g0$a$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.g0.b (x6.g0$b)
.class public final Lx6/g0$b;
.super Ljava/lang/Object;
.source "SessionLifecycleClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    invoke-direct {p0}, Lx6/g0$b;-><init>()V

    return-void
.end method

###### Class x6.g0.c (x6.g0$c)
.class final Lx6/g0$c;
.super Lm9/k;
.source "SessionLifecycleClient.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/g0;->o(Ljava/util/List;)Lda/x1;
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
    c = "com.google.firebase.sessions.SessionLifecycleClient$sendLifecycleEvents$1"
    f = "SessionLifecycleClient.kt"
    l = {
        0x95
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field final synthetic t:Lx6/g0;

.field final synthetic u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lx6/g0;Ljava/util/List;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/g0;",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;",
            "Lk9/d<",
            "-",
            "Lx6/g0$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/g0$c;->t:Lx6/g0;

    iput-object p2, p0, Lx6/g0$c;->u:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lm9/k;-><init>(ILk9/d;)V

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

    new-instance p1, Lx6/g0$c;

    iget-object v0, p0, Lx6/g0$c;->t:Lx6/g0;

    iget-object v1, p0, Lx6/g0$c;->u:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lx6/g0$c;-><init>(Lx6/g0;Ljava/util/List;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx6/g0$c;->s:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_25

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Ly6/a;->a:Ly6/a;

    iput v2, p0, Lx6/g0$c;->s:I

    invoke-virtual {p1, p0}, Ly6/a;->c(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    .line 5
    :cond_25
    :goto_25
    check-cast p1, Ljava/util/Map;

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "SessionLifecycleClient"

    if-eqz v0, :cond_35

    const-string p1, "Sessions SDK did not have any dependent SDKs register as dependencies. Events will not be sent."

    .line 7
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 8
    :cond_35
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 9
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_44
    const/4 p1, 0x1

    goto :goto_5d

    .line 10
    :cond_46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/b;

    .line 11
    invoke-interface {v0}, Ly6/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 p1, 0x0

    :goto_5d
    if-eqz p1, :cond_65

    const-string p1, "Data Collection is disabled for all subscribers. Skipping this Event"

    .line 12
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :cond_65
    const/4 p1, 0x2

    new-array v0, p1, [Landroid/os/Message;

    .line 13
    iget-object v1, p0, Lx6/g0$c;->t:Lx6/g0;

    iget-object v4, p0, Lx6/g0$c;->u:Ljava/util/List;

    invoke-static {v1, v4, p1}, Lx6/g0;->b(Lx6/g0;Ljava/util/List;I)Landroid/os/Message;

    move-result-object p1

    aput-object p1, v0, v3

    .line 14
    iget-object p1, p0, Lx6/g0$c;->t:Lx6/g0;

    iget-object v1, p0, Lx6/g0$c;->u:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lx6/g0;->b(Lx6/g0;Ljava/util/List;I)Landroid/os/Message;

    move-result-object p1

    aput-object p1, v0, v2

    .line 15
    invoke-static {v0}, Li9/j;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-static {p1}, Li9/j;->t(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 17
    new-instance v0, Lx6/g0$c$a;

    invoke-direct {v0}, Lx6/g0$c$a;-><init>()V

    invoke-static {p1, v0}, Li9/j;->M(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lx6/g0$c;->t:Lx6/g0;

    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 20
    invoke-static {v0, v1}, Lx6/g0;->e(Lx6/g0;Landroid/os/Message;)V

    goto :goto_93

    .line 21
    :cond_a3
    :goto_a3
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lx6/g0$c;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lx6/g0$c;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lx6/g0$c;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lx6/g0$c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.g0.c.a (x6.g0$c$a)
.class public final Lx6/g0$c$a;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/g0$c;->i(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/os/Message;

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p2, Landroid/os/Message;

    invoke-virtual {p2}, Landroid/os/Message;->getWhen()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lj9/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class x6.g0.d (x6.g0$d)
.class public final Lx6/g0$d;
.super Ljava/lang/Object;
.source "SessionLifecycleClient.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/g0;-><init>(Lk9/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic o:Lx6/g0;


# direct methods
.method constructor <init>(Lx6/g0;)V
    .registers 2

    iput-object p1, p0, Lx6/g0$d;->o:Lx6/g0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connected to SessionLifecycleService. Queue size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lx6/g0$d;->o:Lx6/g0;

    invoke-static {v0}, Lx6/g0;->c(Lx6/g0;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SessionLifecycleClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lx6/g0$d;->o:Lx6/g0;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lx6/g0;->f(Lx6/g0;Landroid/os/Messenger;)V

    .line 3
    iget-object p1, p0, Lx6/g0$d;->o:Lx6/g0;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lx6/g0;->g(Lx6/g0;Z)V

    .line 4
    iget-object p1, p0, Lx6/g0$d;->o:Lx6/g0;

    invoke-static {p1}, Lx6/g0;->a(Lx6/g0;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lx6/g0;->d(Lx6/g0;Ljava/util/List;)Lda/x1;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "SessionLifecycleClient"

    const-string v0, "Disconnected from SessionLifecycleService"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lx6/g0$d;->o:Lx6/g0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lx6/g0;->f(Lx6/g0;Landroid/os/Messenger;)V

    .line 3
    iget-object p1, p0, Lx6/g0$d;->o:Lx6/g0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lx6/g0;->g(Lx6/g0;Z)V

    return-void
.end method
