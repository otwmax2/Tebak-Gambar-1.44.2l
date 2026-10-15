###### Class androidx.room.f (androidx.room.f)
.class final Landroidx/room/f;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements Lb1/h;
.implements Landroidx/room/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/f$b;,
        Landroidx/room/f$c;,
        Landroidx/room/f$a;
    }
.end annotation


# instance fields
.field private final o:Lb1/h;

.field private final p:Landroidx/room/f$a;

.field private final q:Landroidx/room/a;


# direct methods
.method constructor <init>(Lb1/h;Landroidx/room/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/f;->o:Lb1/h;

    .line 3
    iput-object p2, p0, Landroidx/room/f;->q:Landroidx/room/a;

    .line 4
    invoke-virtual {p2, p1}, Landroidx/room/a;->f(Lb1/h;)V

    .line 5
    new-instance p1, Landroidx/room/f$a;

    invoke-direct {p1, p2}, Landroidx/room/f$a;-><init>(Landroidx/room/a;)V

    iput-object p1, p0, Landroidx/room/f;->p:Landroidx/room/f$a;

    return-void
.end method


# virtual methods
.method public K1()Lb1/g;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f;->p:Landroidx/room/f$a;

    invoke-virtual {v0}, Landroidx/room/f$a;->j()V

    .line 2
    iget-object v0, p0, Landroidx/room/f;->p:Landroidx/room/f$a;

    return-object v0
.end method

.method public b()Lb1/h;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f;->o:Lb1/h;

    return-object v0
.end method

.method c()Landroidx/room/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f;->q:Landroidx/room/a;

    return-object v0
.end method

.method public close()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/f;->p:Landroidx/room/f$a;

    invoke-virtual {v0}, Landroidx/room/f$a;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 2
    invoke-static {v0}, Lz0/e;->a(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f;->o:Lb1/h;

    invoke-interface {v0}, Lb1/h;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f;->o:Lb1/h;

    invoke-interface {v0, p1}, Lb1/h;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

###### Class androidx.room.f.a (androidx.room.f$a)
.class final Landroidx/room/f$a;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements Lb1/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final o:Landroidx/room/a;


# direct methods
.method constructor <init>(Landroidx/room/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;[Ljava/lang/Object;Lb1/g;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/room/f$a;->g(Ljava/lang/String;[Ljava/lang/Object;Lb1/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lb1/g;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Landroidx/room/f$a;->f(Ljava/lang/String;Lb1/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lb1/g;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Landroidx/room/f$a;->h(Lb1/g;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lb1/g;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Landroidx/room/f$a;->i(Lb1/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Ljava/lang/String;Lb1/g;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic g(Ljava/lang/String;[Ljava/lang/Object;Lb1/g;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-interface {p2, p0, p1}, Lb1/g;->x1(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic h(Lb1/g;)Ljava/lang/Boolean;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f

    .line 2
    invoke-interface {p0}, Lb1/g;->h3()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3
    :cond_f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic i(Lb1/g;)Ljava/lang/Object;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public L2()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    sget-object v1, Lx0/b;->a:Lx0/b;

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public O2()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->d()Lb1/g;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_a
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    sget-object v1, Lx0/c;->a:Lx0/c;

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public P1(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->e()Lb1/g;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lb1/g;->P1(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_12

    .line 3
    new-instance v0, Landroidx/room/f$c;

    iget-object v1, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-direct {v0, p1, v1}, Landroidx/room/f$c;-><init>(Landroid/database/Cursor;Landroidx/room/a;)V

    return-object v0

    :catchall_12
    move-exception p1

    .line 4
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->b()V

    .line 5
    throw p1
.end method

.method public V()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->e()Lb1/g;

    move-result-object v0

    .line 2
    :try_start_6
    invoke-interface {v0}, Lb1/g;->V()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v1}, Landroidx/room/a;->b()V

    .line 4
    throw v0
.end method

.method public X1()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->d()Lb1/g;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2
    :try_start_8
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->d()Lb1/g;

    move-result-object v0

    invoke-interface {v0}, Lb1/g;->X1()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 3
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->b()V

    return-void

    :catchall_17
    move-exception v0

    iget-object v1, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v1}, Landroidx/room/a;->b()V

    .line 4
    throw v0

    .line 5
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End transaction called but delegateDb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c1(Lb1/j;)Landroid/database/Cursor;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->e()Lb1/g;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lb1/g;->c1(Lb1/j;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_12

    .line 3
    new-instance v0, Landroidx/room/f$c;

    iget-object v1, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-direct {v0, p1, v1}, Landroidx/room/f$c;-><init>(Landroid/database/Cursor;Landroidx/room/a;)V

    return-object v0

    :catchall_12
    move-exception p1

    .line 4
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->b()V

    .line 5
    throw p1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->a()V

    return-void
.end method

.method public d0()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    sget-object v1, Lx0/a;->a:Lx0/a;

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    new-instance v1, Landroidx/room/b;

    invoke-direct {v1, p1}, Landroidx/room/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    return-void
.end method

.method public h3()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    sget-object v1, Landroidx/room/d;->a:Landroidx/room/d;

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->d()Lb1/g;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_a
    invoke-interface {v0}, Lb1/g;->isOpen()Z

    move-result v0

    return v0
.end method

.method j()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    sget-object v1, Landroidx/room/e;->a:Landroidx/room/e;

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    return-void
.end method

.method public s0(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->e()Lb1/g;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Lb1/g;->s0(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_12

    .line 3
    new-instance p2, Landroidx/room/f$c;

    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-direct {p2, p1, v0}, Landroidx/room/f$c;-><init>(Landroid/database/Cursor;Landroidx/room/a;)V

    return-object p2

    :catchall_12
    move-exception p1

    .line 4
    iget-object p2, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {p2}, Landroidx/room/a;->b()V

    .line 5
    throw p1
.end method

.method public u1()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->d()Lb1/g;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2
    invoke-interface {v0}, Lb1/g;->u1()V

    return-void

    .line 3
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTransactionSuccessful called but delegateDb is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public w0(Ljava/lang/String;)Lb1/k;
    .registers 4

    .line 1
    new-instance v0, Landroidx/room/f$b;

    iget-object v1, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-direct {v0, p1, v1}, Landroidx/room/f$b;-><init>(Ljava/lang/String;Landroidx/room/a;)V

    return-object v0
.end method

.method public x1(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    new-instance v1, Landroidx/room/c;

    invoke-direct {v1, p1, p2}, Landroidx/room/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    return-void
.end method

.method public z1()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->e()Lb1/g;

    move-result-object v0

    .line 2
    :try_start_6
    invoke-interface {v0}, Lb1/g;->z1()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    .line 3
    iget-object v1, p0, Landroidx/room/f$a;->o:Landroidx/room/a;

    invoke-virtual {v1}, Landroidx/room/a;->b()V

    .line 4
    throw v0
.end method

###### Class androidx.room.b (androidx.room.b)
.class public final synthetic Landroidx/room/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/room/b;->a:Ljava/lang/String;

    check-cast p1, Lb1/g;

    invoke-static {v0, p1}, Landroidx/room/f$a;->c(Ljava/lang/String;Lb1/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.room.c (androidx.room.c)
.class public final synthetic Landroidx/room/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/c;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/c;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroidx/room/c;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/c;->b:[Ljava/lang/Object;

    check-cast p1, Lb1/g;

    invoke-static {v0, v1, p1}, Landroidx/room/f$a;->b(Ljava/lang/String;[Ljava/lang/Object;Lb1/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.room.d (androidx.room.d)
.class public final synthetic Landroidx/room/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# static fields
.field public static final synthetic a:Landroidx/room/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/room/d;

    invoke-direct {v0}, Landroidx/room/d;-><init>()V

    sput-object v0, Landroidx/room/d;->a:Landroidx/room/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb1/g;

    invoke-static {p1}, Landroidx/room/f$a;->d(Lb1/g;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.room.e (androidx.room.e)
.class public final synthetic Landroidx/room/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# static fields
.field public static final synthetic a:Landroidx/room/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/room/e;

    invoke-direct {v0}, Landroidx/room/e;-><init>()V

    sput-object v0, Landroidx/room/e;->a:Landroidx/room/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb1/g;

    invoke-static {p1}, Landroidx/room/f$a;->e(Lb1/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x0.a (x0.a)
.class public final synthetic Lx0/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# static fields
.field public static final synthetic a:Lx0/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx0/a;

    invoke-direct {v0}, Lx0/a;-><init>()V

    sput-object v0, Lx0/a;->a:Lx0/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb1/g;

    invoke-interface {p1}, Lb1/g;->d0()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class x0.b (x0.b)
.class public final synthetic Lx0/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# static fields
.field public static final synthetic a:Lx0/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx0/b;

    invoke-direct {v0}, Lx0/b;-><init>()V

    sput-object v0, Lx0/b;->a:Lx0/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb1/g;

    invoke-interface {p1}, Lb1/g;->L2()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class x0.c (x0.c)
.class public final synthetic Lx0/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# static fields
.field public static final synthetic a:Lx0/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx0/c;

    invoke-direct {v0}, Lx0/c;-><init>()V

    sput-object v0, Lx0/c;->a:Lx0/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb1/g;

    invoke-interface {p1}, Lb1/g;->O2()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.room.f.b (androidx.room.f$b)
.class Landroidx/room/f$b;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements Lb1/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroidx/room/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/room/a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/f$b;->p:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Landroidx/room/f$b;->o:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroidx/room/f$b;->q:Landroidx/room/a;

    return-void
.end method

.method public static synthetic b(Landroidx/room/f$b;Ll/a;Lb1/g;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/room/f$b;->e(Ll/a;Lb1/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private c(Lb1/k;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Landroidx/room/f$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    add-int/lit8 v1, v0, 0x1

    .line 2
    iget-object v2, p0, Landroidx/room/f$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 3
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_46

    .line 4
    :cond_17
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_25

    .line 5
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb1/i;->s1(IJ)V

    goto :goto_46

    .line 6
    :cond_25
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_33

    .line 7
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lb1/i;->L0(ID)V

    goto :goto_46

    .line 8
    :cond_33
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 9
    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    goto :goto_46

    .line 10
    :cond_3d
    instance-of v2, v0, [B

    if-eqz v2, :cond_46

    .line 11
    check-cast v0, [B

    invoke-interface {p1, v1, v0}, Lb1/i;->D1(I[B)V

    :cond_46
    :goto_46
    move v0, v1

    goto :goto_1

    :cond_48
    return-void
.end method

.method private d(Ll/a;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll/a<",
            "Lb1/k;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$b;->q:Landroidx/room/a;

    new-instance v1, Landroidx/room/g;

    invoke-direct {v1, p0, p1}, Landroidx/room/g;-><init>(Landroidx/room/f$b;Ll/a;)V

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic e(Ll/a;Lb1/g;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/f$b;->o:Ljava/lang/String;

    invoke-interface {p2, v0}, Lb1/g;->w0(Ljava/lang/String;)Lb1/k;

    move-result-object p2

    .line 2
    invoke-direct {p0, p2}, Landroidx/room/f$b;->c(Lb1/k;)V

    .line 3
    invoke-interface {p1, p2}, Ll/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private f(ILjava/lang/Object;)V
    .registers 6

    add-int/lit8 p1, p1, -0x1

    .line 1
    iget-object v0, p0, Landroidx/room/f$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1b

    .line 2
    iget-object v0, p0, Landroidx/room/f$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_10
    if-gt v0, p1, :cond_1b

    .line 3
    iget-object v1, p0, Landroidx/room/f$b;->p:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 4
    :cond_1b
    iget-object v0, p0, Landroidx/room/f$b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public D1(I[B)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/f$b;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public I3()J
    .registers 3

    .line 1
    sget-object v0, Lx0/e;->a:Lx0/e;

    invoke-direct {p0, v0}, Landroidx/room/f$b;->d(Ll/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public L0(ID)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/room/f$b;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public k0(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/f$b;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public s1(IJ)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/room/f$b;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public u0()I
    .registers 2

    .line 1
    sget-object v0, Lx0/d;->a:Lx0/d;

    invoke-direct {p0, v0}, Landroidx/room/f$b;->d(Ll/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public z2(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/room/f$b;->f(ILjava/lang/Object;)V

    return-void
.end method

###### Class androidx.room.g (androidx.room.g)
.class public final synthetic Landroidx/room/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# instance fields
.field public final synthetic a:Landroidx/room/f$b;

.field public final synthetic b:Ll/a;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/f$b;Ll/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/g;->a:Landroidx/room/f$b;

    iput-object p2, p0, Landroidx/room/g;->b:Ll/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroidx/room/g;->a:Landroidx/room/f$b;

    iget-object v1, p0, Landroidx/room/g;->b:Ll/a;

    check-cast p1, Lb1/g;

    invoke-static {v0, v1, p1}, Landroidx/room/f$b;->b(Landroidx/room/f$b;Ll/a;Lb1/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x0.d (x0.d)
.class public final synthetic Lx0/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# static fields
.field public static final synthetic a:Lx0/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx0/d;

    invoke-direct {v0}, Lx0/d;-><init>()V

    sput-object v0, Lx0/d;->a:Lx0/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb1/k;

    invoke-interface {p1}, Lb1/k;->u0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

###### Class x0.e (x0.e)
.class public final synthetic Lx0/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# static fields
.field public static final synthetic a:Lx0/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx0/e;

    invoke-direct {v0}, Lx0/e;-><init>()V

    sput-object v0, Lx0/e;->a:Lx0/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lb1/k;

    invoke-interface {p1}, Lb1/k;->I3()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.room.f.c (androidx.room.f$c)
.class final Landroidx/room/f$c;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelper.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final o:Landroid/database/Cursor;

.field private final p:Landroidx/room/a;


# direct methods
.method constructor <init>(Landroid/database/Cursor;Landroidx/room/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    .line 3
    iput-object p2, p0, Landroidx/room/f$c;->p:Landroidx/room/a;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2
    iget-object v0, p0, Landroidx/room/f$c;->p:Landroidx/room/a;

    invoke-virtual {v0}, Landroidx/room/a;->b()V

    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public deactivate()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method

.method public getBlob(I)[B
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-static {v0}, Lb1/c;->a(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-static {v0}, Lb1/f;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public move(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToPrevious()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public requery()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-static {v0, p1}, Lb1/e;->a(Landroid/database/Cursor;Landroid/os/Bundle;)V

    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method public setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-static {v0, p1, p2}, Lb1/f;->b(Landroid/database/Cursor;Landroid/content/ContentResolver;Ljava/util/List;)V

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/f$c;->o:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
