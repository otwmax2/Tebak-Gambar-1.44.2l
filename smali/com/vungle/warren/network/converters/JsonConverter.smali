###### Class com.vungle.warren.network.converters.JsonConverter (com.vungle.warren.network.converters.JsonConverter)
.class public Lcom/vungle/warren/network/converters/JsonConverter;
.super Ljava/lang/Object;
.source "JsonConverter.java"

# interfaces
.implements Lcom/vungle/warren/network/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/converters/Converter<",
        "Lja/d0;",
        "Lcom/google/gson/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/gson/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/network/converters/JsonConverter;->a:Lcom/google/gson/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lja/d0;)Lcom/google/gson/o;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lja/d0;->string()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/vungle/warren/network/converters/JsonConverter;->a:Lcom/google/gson/f;

    const-class v2, Lcom/google/gson/o;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/o;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    .line 4
    invoke-virtual {p1}, Lja/d0;->close()V

    return-object v0

    :catchall_12
    move-exception v0

    invoke-virtual {p1}, Lja/d0;->close()V

    .line 5
    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lja/d0;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/network/converters/JsonConverter;->convert(Lja/d0;)Lcom/google/gson/o;

    move-result-object p1

    return-object p1
.end method
