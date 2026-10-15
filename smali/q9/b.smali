###### Class q9.b (q9.b)
.class public final Lq9/b;
.super Ljava/lang/Object;
.source "Closeable.kt"


# direct methods
.method public static final a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .registers 2

    if-eqz p0, :cond_10

    if-nez p1, :cond_8

    .line 1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_10

    .line 2
    :cond_8
    :try_start_8
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p0

    .line 3
    invoke-static {p1, p0}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method
