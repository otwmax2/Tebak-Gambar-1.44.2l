###### Class com.google.android.gms.measurement.internal.zzkb (com.google.android.gms.measurement.internal.zzkb)
.class public final Lcom/google/android/gms/measurement/internal/zzkb;
.super Lcom/google/android/gms/measurement/internal/r;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/measurement/internal/zzka;

.field private d:Lcom/google/android/gms/measurement/internal/zzeo;

.field private volatile e:Ljava/lang/Boolean;

.field private final f:Lcom/google/android/gms/measurement/internal/g;

.field private final g:Lcom/google/android/gms/measurement/internal/o3;

.field private final h:Ljava/util/List;

.field private final i:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzgi;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/r;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->h:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/o3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/o3;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->g:Lcom/google/android/gms/measurement/internal/o3;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzka;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzka;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->c:Lcom/google/android/gms/measurement/internal/zzka;

    new-instance v0, Lcom/google/android/gms/measurement/internal/p2;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/p2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/a1;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->f:Lcom/google/android/gms/measurement/internal/g;

    new-instance v0, Lcom/google/android/gms/measurement/internal/r2;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/r2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/a1;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->i:Lcom/google/android/gms/measurement/internal/g;

    return-void
.end method

.method private final A()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkb;->h:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->h:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    :try_start_2e
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_22

    :catch_32
    move-exception v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 10
    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->h:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->i:Lcom/google/android/gms/measurement/internal/g;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->b()V

    return-void
.end method

.method private final C()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->g:Lcom/google/android/gms/measurement/internal/o3;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->b()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->f:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzel;->K:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/g;->d(J)V

    return-void
.end method

.method private final D(Ljava/lang/Runnable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->h:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->h:Ljava/util/List;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkb;->i:Lcom/google/android/gms/measurement/internal/g;

    const-wide/32 v0, 0xea60

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/g;->d(J)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->N()V

    return-void
.end method

.method private final E()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    const/4 v0, 0x1

    return v0
.end method

.method static bridge synthetic F(Lcom/google/android/gms/measurement/internal/zzkb;)Lcom/google/android/gms/measurement/internal/zzeo;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->d:Lcom/google/android/gms/measurement/internal/zzeo;

    return-object p0
.end method

.method static bridge synthetic G(Lcom/google/android/gms/measurement/internal/zzkb;)Lcom/google/android/gms/measurement/internal/zzka;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->c:Lcom/google/android/gms/measurement/internal/zzka;

    return-object p0
.end method

.method static bridge synthetic I(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzeo;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkb;->d:Lcom/google/android/gms/measurement/internal/zzeo;

    return-void
.end method

.method static bridge synthetic J(Lcom/google/android/gms/measurement/internal/zzkb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->A()V

    return-void
.end method

.method static bridge synthetic K(Lcom/google/android/gms/measurement/internal/zzkb;Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->d:Lcom/google/android/gms/measurement/internal/zzeo;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->d:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->N()V

    :cond_1f
    return-void
.end method

.method static bridge synthetic L(Lcom/google/android/gms/measurement/internal/zzkb;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->C()V

    return-void
.end method

.method private final z(Z)Lcom/google/android/gms/measurement/internal/zzp;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->y()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x;->d:Lcom/google/android/gms/measurement/internal/zzfl;

    if-nez v2, :cond_1f

    goto :goto_50

    .line 6
    :cond_1f
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/x;->d:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->a()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_50

    sget-object v2, Lcom/google/android/gms/measurement/internal/x;->x:Landroid/util/Pair;

    if-ne p1, v2, :cond_32

    goto :goto_50

    .line 9
    :cond_32
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_50
    :goto_50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzep;->l(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final H()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final M()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->z()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->m()Z

    new-instance v1, Lcom/google/android/gms/measurement/internal/m2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/m2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method final N()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->v()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 4
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->y()Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->E()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    .line 18
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkb;->c:Lcom/google/android/gms/measurement/internal/zzka;

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzka;->b(Landroid/content/Intent;)V

    return-void

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    :cond_7c
    return-void

    :cond_7d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->c:Lcom/google/android/gms/measurement/internal/zzka;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzka;->c()V

    return-void
.end method

.method public final O()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->c:Lcom/google/android/gms/measurement/internal/zzka;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzka;->d()V

    .line 4
    :try_start_b
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkb;->c:Lcom/google/android/gms/measurement/internal/zzka;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_1a} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1a} :catch_1a

    :catch_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->d:Lcom/google/android/gms/measurement/internal/zzeo;

    return-void
.end method

.method public final P(Lcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/l2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/l2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzcf;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Q(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/k2;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/k2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final R(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/x2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/x2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/zzcf;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final S(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v6

    new-instance p2, Lcom/google/android/gms/measurement/internal/w2;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/w2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final T(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/h2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/h2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/internal/measurement/zzcf;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final V(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v6

    new-instance p2, Lcom/google/android/gms/measurement/internal/y2;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/y2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Z)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final j(Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->E()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->z()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzer;->q(Lcom/google/android/gms/measurement/internal/zzav;)Z

    move-result v5

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/u2;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/u2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;ZLcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/measurement/zzcf;Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    const v1, 0xbdfcb8

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlp;->p0(I)I

    move-result v0

    if-eqz v0, :cond_31

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    .line 8
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzlp;->E(Lcom/google/android/gms/internal/measurement/zzcf;[B)V

    return-void

    :cond_31
    new-instance v0, Lcom/google/android/gms/measurement/internal/q2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/q2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final l()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->E()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->z()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->l()V

    new-instance v1, Lcom/google/android/gms/measurement/internal/j2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/j2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method final m(Lcom/google/android/gms/measurement/internal/zzeo;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 14
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->E()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0x64

    :goto_14
    const/16 v4, 0x3e9

    if-ge v2, v4, :cond_b0

    if-ne v3, v1, :cond_b0

    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->z()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzer;->k(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    if-eqz p2, :cond_3b

    if-ge v4, v1, :cond_3b

    .line 10
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_40
    if-ge v6, v5, :cond_ab

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 11
    check-cast v7, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 12
    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzav;

    if-eqz v8, :cond_63

    .line 13
    :try_start_4c
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzav;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/zzeo;->T7(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_52

    goto :goto_a8

    :catch_52
    move-exception v7

    .line 14
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 15
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    const-string v9, "Failed to send event to the service"

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a8

    .line 17
    :cond_63
    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzll;

    if-eqz v8, :cond_7e

    .line 18
    :try_start_67
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzll;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/zzeo;->K5(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_6d

    goto :goto_a8

    :catch_6d
    move-exception v7

    .line 19
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    const-string v9, "Failed to send user property to the service"

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a8

    .line 22
    :cond_7e
    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v8, :cond_99

    .line 23
    :try_start_82
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/zzeo;->i2(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_87} :catch_88

    goto :goto_a8

    :catch_88
    move-exception v7

    .line 24
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 25
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 26
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    const-string v9, "Failed to send conditional user property to the service"

    .line 27
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a8

    .line 28
    :cond_99
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    .line 30
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    :goto_a8
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    :cond_ab
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_14

    :cond_b0
    return-void
.end method

.method protected final n(Lcom/google/android/gms/measurement/internal/zzab;)V
    .registers 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->z()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzer;->p(Lcom/google/android/gms/measurement/internal/zzab;)Z

    move-result v5

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzab;

    .line 7
    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzab;)V

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/v2;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/v2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;ZLcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzab;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final o(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    if-eqz p1, :cond_14

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->E()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->z()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->l()V

    .line 6
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->w()Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/t2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/t2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method

.method protected final p(Lcom/google/android/gms/measurement/internal/zziu;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/n2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/n2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zziu;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/o2;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/o2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final r()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/s2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/s2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final s(Lcom/google/android/gms/measurement/internal/zzeo;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkb;->d:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->C()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->A()V

    return-void
.end method

.method protected final u(Lcom/google/android/gms/measurement/internal/zzll;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->E()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->z()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzer;->r(Lcom/google/android/gms/measurement/internal/zzll;)Z

    move-result v0

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->z(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/i2;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/i2;-><init>(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzll;)V

    .line 7
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzkb;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->d:Lcom/google/android/gms/measurement/internal/zzeo;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method final w()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkb;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlp;->o0()I

    move-result v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzel;->k0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_27

    return v1

    :cond_27
    const/4 v0, 0x0

    return v0

    :cond_29
    return v1
.end method

.method final y()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_149

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_service"

    .line 7
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_28

    const/4 v0, 0x0

    goto :goto_34

    .line 8
    :cond_28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_34
    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3f

    goto/16 :goto_143

    .line 11
    :cond_3f
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->y()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzep;->j()I

    move-result v4

    if-ne v4, v1, :cond_53

    :goto_50
    const/4 v3, 0x1

    goto/16 :goto_10b

    .line 15
    :cond_53
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    const-string v5, "Checking service availability"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v4

    const v5, 0xbdfcb8

    .line 19
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzlp;->p0(I)I

    move-result v4

    if-eqz v4, :cond_fa

    if-eq v4, v1, :cond_ea

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_b5

    const/16 v0, 0x9

    if-eq v4, v0, :cond_a5

    const/16 v0, 0x12

    if-eq v4, v0, :cond_95

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Unexpected service status"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c4

    .line 22
    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto :goto_50

    .line 25
    :cond_a5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Service invalid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto :goto_c4

    .line 28
    :cond_b5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Service disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    :goto_c4
    const/4 v1, 0x0

    goto :goto_10b

    .line 31
    :cond_c6
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    const-string v5, "Service container out of date"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzlp;->o0()I

    move-result v4

    const/16 v5, 0x4423

    if-ge v4, v5, :cond_e4

    goto :goto_10b

    :cond_e4
    if-nez v0, :cond_e7

    goto :goto_e8

    :cond_e7
    const/4 v1, 0x0

    :goto_e8
    move v3, v1

    goto :goto_c4

    .line 36
    :cond_ea
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v4, "Service missing"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto :goto_10b

    .line 39
    :cond_fa
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto/16 :goto_50

    :goto_10b
    if-nez v3, :cond_129

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->E()Z

    move-result v0

    if-eqz v0, :cond_129

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto :goto_142

    :cond_129
    if-eqz v1, :cond_142

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->D()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_142
    :goto_142
    move v1, v3

    .line 52
    :goto_143
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->e:Ljava/lang/Boolean;

    :cond_149
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->e:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
