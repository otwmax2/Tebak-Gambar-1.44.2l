###### Class b1.g (b1.g)
.class public interface abstract Lb1/g;
.super Ljava/lang/Object;
.source "SupportSQLiteDatabase.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract L2()Ljava/lang/String;
.end method

.method public abstract O2()Z
.end method

.method public abstract P1(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract V()V
.end method

.method public abstract X1()V
.end method

.method public abstract c1(Lb1/j;)Landroid/database/Cursor;
.end method

.method public abstract d0()Ljava/util/List;
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
.end method

.method public abstract execSQL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract h3()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract s0(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

.method public abstract u1()V
.end method

.method public abstract w0(Ljava/lang/String;)Lb1/k;
.end method

.method public abstract x1(Ljava/lang/String;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public abstract z1()V
.end method
