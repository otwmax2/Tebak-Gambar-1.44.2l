###### Class androidx.room.i (androidx.room.i)
.class public Landroidx/room/i;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final a:Lb1/h$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/room/h0$d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/h0$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroidx/room/h0$e;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:Landroidx/room/h0$c;

.field public final k:Ljava/util/concurrent/Executor;

.field public final l:Ljava/util/concurrent/Executor;

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/lang/String;

.field public final r:Ljava/io/File;

.field public final s:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lb1/h$c;Landroidx/room/h0$d;Ljava/util/List;ZLandroidx/room/h0$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/h0$e;Ljava/util/List;Ljava/util/List;)V
    .registers 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lb1/h$c;",
            "Landroidx/room/h0$d;",
            "Ljava/util/List<",
            "Landroidx/room/h0$b;",
            ">;Z",
            "Landroidx/room/h0$c;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Landroidx/room/h0$e;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ly0/a;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p3

    .line 2
    iput-object v1, v0, Landroidx/room/i;->a:Lb1/h$c;

    move-object v1, p1

    .line 3
    iput-object v1, v0, Landroidx/room/i;->b:Landroid/content/Context;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Landroidx/room/i;->c:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Landroidx/room/i;->d:Landroidx/room/h0$d;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Landroidx/room/i;->e:Ljava/util/List;

    move v1, p6

    .line 7
    iput-boolean v1, v0, Landroidx/room/i;->i:Z

    move-object v1, p7

    .line 8
    iput-object v1, v0, Landroidx/room/i;->j:Landroidx/room/h0$c;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Landroidx/room/i;->k:Ljava/util/concurrent/Executor;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Landroidx/room/i;->l:Ljava/util/concurrent/Executor;

    move v1, p10

    .line 11
    iput-boolean v1, v0, Landroidx/room/i;->m:Z

    move v1, p11

    .line 12
    iput-boolean v1, v0, Landroidx/room/i;->n:Z

    move v1, p12

    .line 13
    iput-boolean v1, v0, Landroidx/room/i;->o:Z

    move-object v1, p13

    .line 14
    iput-object v1, v0, Landroidx/room/i;->p:Ljava/util/Set;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Landroidx/room/i;->q:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Landroidx/room/i;->r:Ljava/io/File;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Landroidx/room/i;->s:Ljava/util/concurrent/Callable;

    if-nez p18, :cond_3e

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_40

    :cond_3e
    move-object/from16 v1, p18

    :goto_40
    iput-object v1, v0, Landroidx/room/i;->g:Ljava/util/List;

    if-nez p19, :cond_49

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_4b

    :cond_49
    move-object/from16 v1, p19

    :goto_4b
    iput-object v1, v0, Landroidx/room/i;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(II)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_e

    .line 1
    iget-boolean p2, p0, Landroidx/room/i;->o:Z

    if-eqz p2, :cond_e

    return v1

    .line 2
    :cond_e
    iget-boolean p2, p0, Landroidx/room/i;->n:Z

    if-eqz p2, :cond_21

    iget-object p2, p0, Landroidx/room/i;->p:Ljava/util/Set;

    if-eqz p2, :cond_22

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :cond_22
    :goto_22
    return v0
.end method
