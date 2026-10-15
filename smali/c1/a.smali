###### Class c1.a (c1.a)
.class Lc1/a;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Lb1/g;


# static fields
.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;


# instance fields
.field private final o:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, ""

    const-string v1, " OR ROLLBACK "

    const-string v2, " OR ABORT "

    const-string v3, " OR FAIL "

    const-string v4, " OR IGNORE "

    const-string v5, " OR REPLACE "

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc1/a;->p:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    sput-object v0, Lc1/a;->q:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public L2()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O2()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public P1(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3

    .line 1
    new-instance v0, Lb1/a;

    invoke-direct {v0, p1}, Lb1/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc1/a;->c1(Lb1/j;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public V()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public X1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public c1(Lb1/j;)Landroid/database/Cursor;
    .registers 6

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lc1/a$a;

    invoke-direct {v1, p0, p1}, Lc1/a$a;-><init>(Lc1/a;Lb1/j;)V

    .line 2
    invoke-interface {p1}, Lb1/j;->b()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lc1/a;->q:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public d0()Ljava/util/List;
    .registers 2
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
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public h3()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lb1/b;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public s0(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p1}, Lb1/j;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc1/a;->q:[Ljava/lang/String;

    new-instance v5, Lc1/a$b;

    invoke-direct {v5, p0, p1}, Lc1/a$b;-><init>(Lc1/a;Lb1/j;)V

    const/4 v3, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lb1/b;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public u1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public w0(Ljava/lang/String;)Lb1/k;
    .registers 4

    .line 1
    new-instance v0, Lc1/e;

    iget-object v1, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v0, p1}, Lc1/e;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public x1(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public z1()V
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/a;->o:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    return-void
.end method

###### Class c1.a.C0088a (c1.a$a)
.class Lc1/a$a;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc1/a;->c1(Lb1/j;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb1/j;

.field final synthetic b:Lc1/a;


# direct methods
.method constructor <init>(Lc1/a;Lb1/j;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc1/a$a;->b:Lc1/a;

    iput-object p2, p0, Lc1/a$a;->a:Lb1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .registers 6

    .line 1
    iget-object p1, p0, Lc1/a$a;->a:Lb1/j;

    new-instance v0, Lc1/d;

    invoke-direct {v0, p4}, Lc1/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Lb1/j;->c(Lb1/i;)V

    .line 2
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method

###### Class c1.a.b (c1.a$b)
.class Lc1/a$b;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc1/a;->s0(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb1/j;

.field final synthetic b:Lc1/a;


# direct methods
.method constructor <init>(Lc1/a;Lb1/j;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lc1/a$b;->b:Lc1/a;

    iput-object p2, p0, Lc1/a$b;->a:Lb1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .registers 6

    .line 1
    iget-object p1, p0, Lc1/a$b;->a:Lb1/j;

    new-instance v0, Lc1/d;

    invoke-direct {v0, p4}, Lc1/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Lb1/j;->c(Lb1/i;)V

    .line 2
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method
