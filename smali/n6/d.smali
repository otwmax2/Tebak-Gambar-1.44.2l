###### Class n6.d (n6.d)
.class public abstract Ln6/d;
.super Ljava/lang/Object;
.source "PersistedInstallationEntry.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/d$a;
    }
.end annotation


# static fields
.field public static a:Ln6/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ln6/d;->a()Ln6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Ln6/d$a;->a()Ln6/d;

    move-result-object v0

    sput-object v0, Ln6/d;->a:Ln6/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ln6/d$a;
    .registers 4

    .line 1
    new-instance v0, Ln6/a$b;

    invoke-direct {v0}, Ln6/a$b;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Ln6/a$b;->h(J)Ln6/d$a;

    move-result-object v0

    sget-object v3, Ln6/c$a;->o:Ln6/c$a;

    .line 3
    invoke-virtual {v0, v3}, Ln6/d$a;->g(Ln6/c$a;)Ln6/d$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1, v2}, Ln6/d$a;->c(J)Ln6/d$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()J
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ln6/c$a;
.end method

.method public abstract h()J
.end method

.method public i()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->g()Ln6/c$a;

    move-result-object v0

    sget-object v1, Ln6/c$a;->s:Ln6/c$a;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public j()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->g()Ln6/c$a;

    move-result-object v0

    sget-object v1, Ln6/c$a;->p:Ln6/c$a;

    if-eq v0, v1, :cond_13

    .line 2
    invoke-virtual {p0}, Ln6/d;->g()Ln6/c$a;

    move-result-object v0

    sget-object v1, Ln6/c$a;->o:Ln6/c$a;

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public k()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->g()Ln6/c$a;

    move-result-object v0

    sget-object v1, Ln6/c$a;->r:Ln6/c$a;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public l()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->g()Ln6/c$a;

    move-result-object v0

    sget-object v1, Ln6/c$a;->q:Ln6/c$a;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public m()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->g()Ln6/c$a;

    move-result-object v0

    sget-object v1, Ln6/c$a;->o:Ln6/c$a;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public abstract n()Ln6/d$a;
.end method

.method public o(Ljava/lang/String;JJ)Ln6/d;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ln6/d;->n()Ln6/d$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ln6/d$a;->b(Ljava/lang/String;)Ln6/d$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2, p3}, Ln6/d$a;->c(J)Ln6/d$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p4, p5}, Ln6/d$a;->h(J)Ln6/d$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ln6/d$a;->a()Ln6/d;

    move-result-object p1

    return-object p1
.end method

.method public p()Ln6/d;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->n()Ln6/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln6/d$a;->b(Ljava/lang/String;)Ln6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Ln6/d$a;->a()Ln6/d;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Ln6/d;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->n()Ln6/d$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ln6/d$a;->e(Ljava/lang/String;)Ln6/d$a;

    move-result-object p1

    sget-object v0, Ln6/c$a;->s:Ln6/c$a;

    .line 3
    invoke-virtual {p1, v0}, Ln6/d$a;->g(Ln6/c$a;)Ln6/d$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ln6/d$a;->a()Ln6/d;

    move-result-object p1

    return-object p1
.end method

.method public r()Ln6/d;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->n()Ln6/d$a;

    move-result-object v0

    sget-object v1, Ln6/c$a;->p:Ln6/c$a;

    invoke-virtual {v0, v1}, Ln6/d$a;->g(Ln6/c$a;)Ln6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Ln6/d$a;->a()Ln6/d;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Ln6/d;
    .registers 9

    .line 1
    invoke-virtual {p0}, Ln6/d;->n()Ln6/d$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ln6/d$a;->d(Ljava/lang/String;)Ln6/d$a;

    move-result-object p1

    sget-object v0, Ln6/c$a;->r:Ln6/c$a;

    .line 3
    invoke-virtual {p1, v0}, Ln6/d$a;->g(Ln6/c$a;)Ln6/d$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p5}, Ln6/d$a;->b(Ljava/lang/String;)Ln6/d$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Ln6/d$a;->f(Ljava/lang/String;)Ln6/d$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p6, p7}, Ln6/d$a;->c(J)Ln6/d$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p3, p4}, Ln6/d$a;->h(J)Ln6/d$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ln6/d$a;->a()Ln6/d;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;)Ln6/d;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ln6/d;->n()Ln6/d$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ln6/d$a;->d(Ljava/lang/String;)Ln6/d$a;

    move-result-object p1

    sget-object v0, Ln6/c$a;->q:Ln6/c$a;

    .line 3
    invoke-virtual {p1, v0}, Ln6/d$a;->g(Ln6/c$a;)Ln6/d$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ln6/d$a;->a()Ln6/d;

    move-result-object p1

    return-object p1
.end method

###### Class n6.d.a (n6.d$a)
.class public abstract Ln6/d$a;
.super Ljava/lang/Object;
.source "PersistedInstallationEntry.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ln6/d;
.end method

.method public abstract b(Ljava/lang/String;)Ln6/d$a;
.end method

.method public abstract c(J)Ln6/d$a;
.end method

.method public abstract d(Ljava/lang/String;)Ln6/d$a;
.end method

.method public abstract e(Ljava/lang/String;)Ln6/d$a;
.end method

.method public abstract f(Ljava/lang/String;)Ln6/d$a;
.end method

.method public abstract g(Ln6/c$a;)Ln6/d$a;
.end method

.method public abstract h(J)Ln6/d$a;
.end method
