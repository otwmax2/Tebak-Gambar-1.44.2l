###### Class com.google.gson.q (com.google.gson.q)
.class public final Lcom/google/gson/q;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public static a(Lh7/a;)Lcom/google/gson/l;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/m;,
            Lcom/google/gson/u;
        }
    .end annotation

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    .line 1
    invoke-virtual {p0}, Lh7/a;->k()Z

    move-result v2

    const/4 v3, 0x1

    .line 2
    invoke-virtual {p0, v3}, Lh7/a;->E(Z)V

    .line 3
    :try_start_c
    invoke-static {p0}, Lc7/l;->a(Lh7/a;)Lcom/google/gson/l;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/StackOverflowError; {:try_start_c .. :try_end_10} :catch_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_10} :catch_16
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 4
    invoke-virtual {p0, v2}, Lh7/a;->E(Z)V

    return-object v0

    :catchall_14
    move-exception v0

    goto :goto_48

    :catch_16
    move-exception v3

    .line 5
    :try_start_17
    new-instance v4, Lcom/google/gson/p;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/gson/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2f
    move-exception v3

    .line 6
    new-instance v4, Lcom/google/gson/p;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/gson/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_48
    .catchall {:try_start_17 .. :try_end_48} :catchall_14

    .line 7
    :goto_48
    invoke-virtual {p0, v2}, Lh7/a;->E(Z)V

    throw v0
.end method

.method public static b(Ljava/io/Reader;)Lcom/google/gson/l;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/m;,
            Lcom/google/gson/u;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lh7/a;

    invoke-direct {v0, p0}, Lh7/a;-><init>(Ljava/io/Reader;)V

    .line 2
    invoke-static {v0}, Lcom/google/gson/q;->a(Lh7/a;)Lcom/google/gson/l;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/gson/l;->q()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Lh7/a;->x()Lh7/b;

    move-result-object v0

    sget-object v1, Lh7/b;->x:Lh7/b;

    if-ne v0, v1, :cond_18

    goto :goto_20

    .line 4
    :cond_18
    new-instance p0, Lcom/google/gson/u;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p0, v0}, Lcom/google/gson/u;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catch Lh7/d; {:try_start_0 .. :try_end_20} :catch_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_28
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-object p0

    :catch_21
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/gson/u;

    invoke-direct {v0, p0}, Lcom/google/gson/u;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_28
    move-exception p0

    .line 6
    new-instance v0, Lcom/google/gson/m;

    invoke-direct {v0, p0}, Lcom/google/gson/m;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2f
    move-exception p0

    .line 7
    new-instance v0, Lcom/google/gson/u;

    invoke-direct {v0, p0}, Lcom/google/gson/u;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/google/gson/l;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/u;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gson/q;->b(Ljava/io/Reader;)Lcom/google/gson/l;

    move-result-object p0

    return-object p0
.end method
