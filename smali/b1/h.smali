###### Class b1.h (b1.h)
.class public interface abstract Lb1/h;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/h$c;,
        Lb1/h$b;,
        Lb1/h$a;
    }
.end annotation


# virtual methods
.method public abstract K1()Lb1/g;
.end method

.method public abstract close()V
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract setWriteAheadLoggingEnabled(Z)V
.end method

###### Class b1.h.a (b1.h$a)
.class public abstract Lb1/h$a;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/h;
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
    iput p1, p0, Lb1/h$a;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const-string v0, ":memory:"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_65

    .line 2
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleting the database file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportSQLite"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_38

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lb1/b;->a(Ljava/io/File;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_37} :catch_5f

    goto :goto_65

    .line 5
    :cond_38
    :try_start_38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_65

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete the database file "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_57} :catch_58

    goto :goto_65

    :catch_58
    move-exception p1

    :try_start_59
    const-string v0, "error while deleting corrupted database file"

    .line 7
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_5f

    goto :goto_65

    :catch_5f
    move-exception p1

    const-string v0, "delete failed: "

    .line 8
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method public b(Lb1/g;)V
    .registers 2

    return-void
.end method

.method public c(Lb1/g;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Corruption reported by sqlite on database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lb1/g;->L2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SupportSQLite"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1}, Lb1/g;->isOpen()Z

    move-result v0

    if-nez v0, :cond_28

    .line 3
    invoke-interface {p1}, Lb1/g;->L2()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb1/h$a;->a(Ljava/lang/String;)V

    return-void

    :cond_28
    const/4 v0, 0x0

    .line 4
    :try_start_29
    invoke-interface {p1}, Lb1/g;->d0()Ljava/util/List;

    move-result-object v0
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2d} :catch_30
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2e

    goto :goto_30

    :catchall_2e
    move-exception v1

    goto :goto_34

    .line 5
    :catch_30
    :goto_30
    :try_start_30
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_56
    .catchall {:try_start_30 .. :try_end_33} :catchall_2e

    goto :goto_57

    :goto_34
    if-eqz v0, :cond_4e

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lb1/h$a;->a(Ljava/lang/String;)V

    goto :goto_3a

    .line 8
    :cond_4e
    invoke-interface {p1}, Lb1/g;->L2()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb1/h$a;->a(Ljava/lang/String;)V

    .line 9
    :cond_55
    throw v1

    :catch_56
    nop

    :goto_57
    if-eqz v0, :cond_71

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 11
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lb1/h$a;->a(Ljava/lang/String;)V

    goto :goto_5d

    .line 12
    :cond_71
    invoke-interface {p1}, Lb1/g;->L2()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb1/h$a;->a(Ljava/lang/String;)V

    :cond_78
    return-void
.end method

.method public abstract d(Lb1/g;)V
.end method

.method public abstract e(Lb1/g;II)V
.end method

.method public f(Lb1/g;)V
    .registers 2

    return-void
.end method

.method public abstract g(Lb1/g;II)V
.end method

###### Class b1.h.b (b1.h$b)
.class public Lb1/h$b;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/h$b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lb1/h$a;

.field public final d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lb1/h$a;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb1/h$b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb1/h$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lb1/h$b;->c:Lb1/h$a;

    .line 5
    iput-boolean p4, p0, Lb1/h$b;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lb1/h$b$a;
    .registers 2

    .line 1
    new-instance v0, Lb1/h$b$a;

    invoke-direct {v0, p0}, Lb1/h$b$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

###### Class b1.h.b.a (b1.h$b$a)
.class public Lb1/h$b$a;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Lb1/h$a;

.field d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb1/h$b$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lb1/h$b;
    .registers 6

    .line 1
    iget-object v0, p0, Lb1/h$b$a;->c:Lb1/h$a;

    if-eqz v0, :cond_33

    .line 2
    iget-object v0, p0, Lb1/h$b$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 3
    iget-boolean v0, p0, Lb1/h$b$a;->d:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lb1/h$b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 4
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1d
    :goto_1d
    new-instance v0, Lb1/h$b;

    iget-object v1, p0, Lb1/h$b$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lb1/h$b$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lb1/h$b$a;->c:Lb1/h$a;

    iget-boolean v4, p0, Lb1/h$b$a;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lb1/h$b;-><init>(Landroid/content/Context;Ljava/lang/String;Lb1/h$a;Z)V

    return-object v0

    .line 6
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lb1/h$a;)Lb1/h$b$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lb1/h$b$a;->c:Lb1/h$a;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lb1/h$b$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lb1/h$b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lb1/h$b$a;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lb1/h$b$a;->d:Z

    return-object p0
.end method

###### Class b1.h.c (b1.h$c)
.class public interface abstract Lb1/h$c;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lb1/h$b;)Lb1/h;
.end method
