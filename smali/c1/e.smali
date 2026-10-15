###### Class c1.e (c1.e)
.class Lc1/e;
.super Lc1/d;
.source "FrameworkSQLiteStatement.java"

# interfaces
.implements Lb1/k;


# instance fields
.field private final p:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lc1/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 2
    iput-object p1, p0, Lc1/e;->p:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public I3()J
    .registers 3

    .line 1
    iget-object v0, p0, Lc1/e;->p:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public u0()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc1/e;->p:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method
