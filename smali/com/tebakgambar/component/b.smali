###### Class com.tebakgambar.component.b (com.tebakgambar.component.b)
.class public Lcom/tebakgambar/component/b;
.super Ljava/lang/Object;
.source "TGTicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/component/b$c;
    }
.end annotation


# static fields
.field private static f:Lcom/tebakgambar/component/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/component/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:J

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/util/TimerTask;


# direct methods
.method private constructor <init>(J)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tebakgambar/component/b$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/component/b$a;-><init>(Lcom/tebakgambar/component/b;)V

    iput-object v0, p0, Lcom/tebakgambar/component/b;->d:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lcom/tebakgambar/component/b$b;

    invoke-direct {v0, p0}, Lcom/tebakgambar/component/b$b;-><init>(Lcom/tebakgambar/component/b;)V

    iput-object v0, p0, Lcom/tebakgambar/component/b;->e:Ljava/util/TimerTask;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/component/b;->b:Landroid/os/Handler;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/component/b;->a:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tebakgambar/component/b;->c:J

    .line 8
    iget-object v2, p0, Lcom/tebakgambar/component/b;->e:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/tebakgambar/component/b;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/tebakgambar/component/b;->c:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tebakgambar/component/b;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/component/b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/tebakgambar/component/b;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/component/b;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/tebakgambar/component/b;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/component/b;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static f()Lcom/tebakgambar/component/b;
    .registers 3

    .line 1
    sget-object v0, Lcom/tebakgambar/component/b;->f:Lcom/tebakgambar/component/b;

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Lcom/tebakgambar/component/b;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/tebakgambar/component/b;-><init>(J)V

    sput-object v0, Lcom/tebakgambar/component/b;->f:Lcom/tebakgambar/component/b;

    .line 3
    :cond_d
    sget-object v0, Lcom/tebakgambar/component/b;->f:Lcom/tebakgambar/component/b;

    return-object v0
.end method


# virtual methods
.method public e(Lcom/tebakgambar/component/b$c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lcom/tebakgambar/component/b$c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.tebakgambar.component.b.a (com.tebakgambar.component.b$a)
.class Lcom/tebakgambar/component/b$a;
.super Ljava/lang/Object;
.source "TGTicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/component/b;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/b$a;->o:Lcom/tebakgambar/component/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/tebakgambar/component/b$a;->o:Lcom/tebakgambar/component/b;

    invoke-static {v2, v0, v1}, Lcom/tebakgambar/component/b;->a(Lcom/tebakgambar/component/b;J)J

    const/4 v2, 0x0

    .line 3
    :goto_a
    iget-object v3, p0, Lcom/tebakgambar/component/b$a;->o:Lcom/tebakgambar/component/b;

    invoke-static {v3}, Lcom/tebakgambar/component/b;->b(Lcom/tebakgambar/component/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 4
    iget-object v3, p0, Lcom/tebakgambar/component/b$a;->o:Lcom/tebakgambar/component/b;

    invoke-static {v3}, Lcom/tebakgambar/component/b;->b(Lcom/tebakgambar/component/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/component/b$c;

    invoke-interface {v3, v0, v1}, Lcom/tebakgambar/component/b$c;->e(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_28
    return-void
.end method

###### Class com.tebakgambar.component.b.C0130b (com.tebakgambar.component.b$b)
.class Lcom/tebakgambar/component/b$b;
.super Ljava/util/TimerTask;
.source "TGTicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/component/b;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/b$b;->o:Lcom/tebakgambar/component/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/b$b;->o:Lcom/tebakgambar/component/b;

    invoke-static {v0}, Lcom/tebakgambar/component/b;->d(Lcom/tebakgambar/component/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/component/b$b;->o:Lcom/tebakgambar/component/b;

    invoke-static {v1}, Lcom/tebakgambar/component/b;->c(Lcom/tebakgambar/component/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.tebakgambar.component.b.c (com.tebakgambar.component.b$c)
.class public interface abstract Lcom/tebakgambar/component/b$c;
.super Ljava/lang/Object;
.source "TGTicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract e(J)V
.end method
