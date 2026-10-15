###### Class androidx.room.i0 (androidx.room.i0)
.class public Landroidx/room/i0;
.super Lb1/h$a;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/i0$b;,
        Landroidx/room/i0$a;
    }
.end annotation


# instance fields
.field private b:Landroidx/room/i;

.field private final c:Landroidx/room/i0$a;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/i;Landroidx/room/i0$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget v0, p2, Landroidx/room/i0$a;->a:I

    invoke-direct {p0, v0}, Lb1/h$a;-><init>(I)V

    .line 2
    iput-object p1, p0, Landroidx/room/i0;->b:Landroidx/room/i;

    .line 3
    iput-object p2, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    .line 4
    iput-object p3, p0, Landroidx/room/i0;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroidx/room/i0;->e:Ljava/lang/String;

    return-void
.end method

.method private h(Lb1/g;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroidx/room/i0;->k(Lb1/g;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 2
    new-instance v1, Lb1/a;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v2}, Lb1/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lb1/g;->c1(Lb1/j;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    :try_start_12
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_39

    .line 5
    :cond_1d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 6
    iget-object p1, p0, Landroidx/room/i0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    iget-object p1, p0, Landroidx/room/i0;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_50

    .line 7
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_39
    move-exception v0

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 9
    throw v0

    .line 10
    :cond_3e
    iget-object v0, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v0, p1}, Landroidx/room/i0$a;->g(Lb1/g;)Landroidx/room/i0$b;

    move-result-object v0

    .line 11
    iget-boolean v1, v0, Landroidx/room/i0$b;->a:Z

    if-eqz v1, :cond_51

    .line 12
    iget-object v0, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v0, p1}, Landroidx/room/i0$a;->e(Lb1/g;)V

    .line 13
    invoke-direct {p0, p1}, Landroidx/room/i0;->l(Lb1/g;)V

    :cond_50
    :goto_50
    return-void

    .line 14
    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/i0$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(Lb1/g;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static j(Lb1/g;)Z
    .registers 3

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 1
    invoke-interface {p0, v0}, Lb1/g;->P1(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_18

    if-nez v0, :cond_14

    const/4 v1, 0x1

    .line 3
    :cond_14
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_18
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 4
    throw v0
.end method

.method private static k(Lb1/g;)Z
    .registers 3

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 1
    invoke-interface {p0, v0}, Lb1/g;->P1(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_18

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 3
    :cond_14
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_18
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 4
    throw v0
.end method

.method private l(Lb1/g;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/i0;->i(Lb1/g;)V

    .line 2
    iget-object v0, p0, Landroidx/room/i0;->d:Ljava/lang/String;

    invoke-static {v0}, Lx0/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lb1/g;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lb1/h$a;->b(Lb1/g;)V

    return-void
.end method

.method public d(Lb1/g;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroidx/room/i0;->j(Lb1/g;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v1, p1}, Landroidx/room/i0$a;->a(Lb1/g;)V

    if-nez v0, :cond_2f

    .line 3
    iget-object v0, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v0, p1}, Landroidx/room/i0$a;->g(Lb1/g;)Landroidx/room/i0$b;

    move-result-object v0

    .line 4
    iget-boolean v1, v0, Landroidx/room/i0$b;->a:Z

    if-eqz v1, :cond_16

    goto :goto_2f

    .line 5
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/i0$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2f
    :goto_2f
    invoke-direct {p0, p1}, Landroidx/room/i0;->l(Lb1/g;)V

    .line 7
    iget-object v0, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v0, p1}, Landroidx/room/i0$a;->c(Lb1/g;)V

    return-void
.end method

.method public e(Lb1/g;II)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/i0;->g(Lb1/g;II)V

    return-void
.end method

.method public f(Lb1/g;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lb1/h$a;->f(Lb1/g;)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/room/i0;->h(Lb1/g;)V

    .line 3
    iget-object v0, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v0, p1}, Landroidx/room/i0$a;->d(Lb1/g;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/room/i0;->b:Landroidx/room/i;

    return-void
.end method

.method public g(Lb1/g;II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/i;

    if-eqz v0, :cond_52

    .line 2
    iget-object v0, v0, Landroidx/room/i;->d:Landroidx/room/h0$d;

    invoke-virtual {v0, p2, p3}, Landroidx/room/h0$d;->c(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 3
    iget-object v1, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v1, p1}, Landroidx/room/i0$a;->f(Lb1/g;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/b;

    .line 5
    invoke-virtual {v1, p1}, Ly0/b;->a(Lb1/g;)V

    goto :goto_15

    .line 6
    :cond_25
    iget-object v0, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v0, p1}, Landroidx/room/i0$a;->g(Lb1/g;)Landroidx/room/i0$b;

    move-result-object v0

    .line 7
    iget-boolean v1, v0, Landroidx/room/i0$b;->a:Z

    if-eqz v1, :cond_39

    .line 8
    iget-object v0, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {v0, p1}, Landroidx/room/i0$a;->e(Lb1/g;)V

    .line 9
    invoke-direct {p0, p1}, Landroidx/room/i0;->l(Lb1/g;)V

    const/4 v0, 0x1

    goto :goto_53

    .line 10
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Migration didn\'t properly handle: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Landroidx/room/i0$b;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    const/4 v0, 0x0

    :goto_53
    if-nez v0, :cond_8e

    .line 11
    iget-object v0, p0, Landroidx/room/i0;->b:Landroidx/room/i;

    if-eqz v0, :cond_6a

    .line 12
    invoke-virtual {v0, p2, p3}, Landroidx/room/i;->a(II)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 13
    iget-object p2, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {p2, p1}, Landroidx/room/i0$a;->b(Lb1/g;)V

    .line 14
    iget-object p2, p0, Landroidx/room/i0;->c:Landroidx/room/i0$a;

    invoke-virtual {p2, p1}, Landroidx/room/i0$a;->a(Lb1/g;)V

    goto :goto_8e

    .line 15
    :cond_6a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8e
    :goto_8e
    return-void
.end method

###### Class androidx.room.i0.a (androidx.room.i0$a)
.class public abstract Landroidx/room/i0$a;
.super Ljava/lang/Object;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/room/i0$a;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a(Lb1/g;)V
.end method

.method protected abstract b(Lb1/g;)V
.end method

.method protected abstract c(Lb1/g;)V
.end method

.method protected abstract d(Lb1/g;)V
.end method

.method protected abstract e(Lb1/g;)V
.end method

.method protected abstract f(Lb1/g;)V
.end method

.method protected abstract g(Lb1/g;)Landroidx/room/i0$b;
.end method

###### Class androidx.room.i0.b (androidx.room.i0$b)
.class public Landroidx/room/i0$b;
.super Ljava/lang/Object;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/room/i0$b;->a:Z

    .line 3
    iput-object p2, p0, Landroidx/room/i0$b;->b:Ljava/lang/String;

    return-void
.end method
