###### Class androidx.work.impl.WorkDatabase (androidx.work.impl.WorkDatabase)
.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/h0;
.source "WorkDatabase.java"


# static fields
.field private static final o:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->o:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/room/h0;-><init>()V

    return-void
.end method

.method public static C(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .registers 8

    .line 1
    const-class v0, Landroidx/work/impl/WorkDatabase;

    if-eqz p2, :cond_d

    .line 2
    invoke-static {p0, v0}, Landroidx/room/g0;->c(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/h0$a;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroidx/room/h0$a;->c()Landroidx/room/h0$a;

    move-result-object p2

    goto :goto_1d

    .line 4
    :cond_d
    invoke-static {}, Lj1/h;->d()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p0, v0, p2}, Landroidx/room/g0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/h0$a;

    move-result-object p2

    .line 6
    new-instance v0, Landroidx/work/impl/WorkDatabase$a;

    invoke-direct {v0, p0}, Landroidx/work/impl/WorkDatabase$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/room/h0$a;->f(Lb1/h$c;)Landroidx/room/h0$a;

    .line 7
    :goto_1d
    invoke-virtual {p2, p1}, Landroidx/room/h0$a;->g(Ljava/util/concurrent/Executor;)Landroidx/room/h0$a;

    move-result-object p1

    .line 8
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->E()Landroidx/room/h0$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/room/h0$a;->a(Landroidx/room/h0$b;)Landroidx/room/h0$a;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ly0/b;

    sget-object v1, Landroidx/work/impl/a;->a:Ly0/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 9
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    new-instance v1, Landroidx/work/impl/a$h;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v1, p0, v3, v4}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v1, v0, v2

    .line 10
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    sget-object v1, Landroidx/work/impl/a;->b:Ly0/b;

    aput-object v1, v0, v2

    .line 11
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    sget-object v1, Landroidx/work/impl/a;->c:Ly0/b;

    aput-object v1, v0, v2

    .line 12
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    new-instance v1, Landroidx/work/impl/a$h;

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-direct {v1, p0, v3, v4}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v1, v0, v2

    .line 13
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    sget-object v1, Landroidx/work/impl/a;->d:Ly0/b;

    aput-object v1, v0, v2

    .line 14
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    sget-object v1, Landroidx/work/impl/a;->e:Ly0/b;

    aput-object v1, v0, v2

    .line 15
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    sget-object v1, Landroidx/work/impl/a;->f:Ly0/b;

    aput-object v1, v0, v2

    .line 16
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    new-instance v1, Landroidx/work/impl/a$i;

    invoke-direct {v1, p0}, Landroidx/work/impl/a$i;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    .line 17
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p1

    new-array v0, p2, [Ly0/b;

    new-instance v1, Landroidx/work/impl/a$h;

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v1, p0, v3, v4}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;II)V

    aput-object v1, v0, v2

    .line 18
    invoke-virtual {p1, v0}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p0

    new-array p1, p2, [Ly0/b;

    sget-object p2, Landroidx/work/impl/a;->g:Ly0/b;

    aput-object p2, p1, v2

    .line 19
    invoke-virtual {p0, p1}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroidx/room/h0$a;->e()Landroidx/room/h0$a;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroidx/room/h0$a;->d()Landroidx/room/h0;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method

.method static E()Landroidx/room/h0$b;
    .registers 1

    .line 1
    new-instance v0, Landroidx/work/impl/WorkDatabase$b;

    invoke-direct {v0}, Landroidx/work/impl/WorkDatabase$b;-><init>()V

    return-object v0
.end method

.method static F()J
    .registers 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/work/impl/WorkDatabase;->o:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static G()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/work/impl/WorkDatabase;->F()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract D()Lq1/b;
.end method

.method public abstract H()Lq1/e;
.end method

.method public abstract I()Lq1/h;
.end method

.method public abstract J()Lq1/k;
.end method

.method public abstract K()Lq1/n;
.end method

.method public abstract L()Lq1/q;
.end method

.method public abstract M()Lq1/t;
.end method

###### Class androidx.work.impl.WorkDatabase.a (androidx.work.impl.WorkDatabase$a)
.class Landroidx/work/impl/WorkDatabase$a;
.super Ljava/lang/Object;
.source "WorkDatabase.java"

# interfaces
.implements Lb1/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->C(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb1/h$b;)Lb1/h;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lb1/h$b;->a(Landroid/content/Context;)Lb1/h$b$a;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lb1/h$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb1/h$b$a;->c(Ljava/lang/String;)Lb1/h$b$a;

    move-result-object v1

    iget-object p1, p1, Lb1/h$b;->c:Lb1/h$a;

    .line 4
    invoke-virtual {v1, p1}, Lb1/h$b$a;->b(Lb1/h$a;)Lb1/h$b$a;

    move-result-object p1

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Lb1/h$b$a;->d(Z)Lb1/h$b$a;

    .line 6
    new-instance p1, Lc1/c;

    invoke-direct {p1}, Lc1/c;-><init>()V

    .line 7
    invoke-virtual {v0}, Lb1/h$b$a;->a()Lb1/h$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc1/c;->a(Lb1/h$b;)Lb1/h;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.work.impl.WorkDatabase.b (androidx.work.impl.WorkDatabase$b)
.class Landroidx/work/impl/WorkDatabase$b;
.super Landroidx/room/h0$b;
.source "WorkDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase;->E()Landroidx/room/h0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/room/h0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb1/g;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/room/h0$b;->c(Lb1/g;)V

    .line 2
    invoke-interface {p1}, Lb1/g;->V()V

    .line 3
    :try_start_6
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->G()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lb1/g;->u1()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    .line 5
    invoke-interface {p1}, Lb1/g;->X1()V

    return-void

    :catchall_14
    move-exception v0

    invoke-interface {p1}, Lb1/g;->X1()V

    .line 6
    throw v0
.end method
