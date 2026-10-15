###### Class com.vungle.warren.network.converters.EmptyResponseConverter (com.vungle.warren.network.converters.EmptyResponseConverter)
.class public Lcom/vungle/warren/network/converters/EmptyResponseConverter;
.super Ljava/lang/Object;
.source "EmptyResponseConverter.java"

# interfaces
.implements Lcom/vungle/warren/network/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/converters/Converter<",
        "Lja/d0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lja/d0;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/network/converters/EmptyResponseConverter;->convert(Lja/d0;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lja/d0;)Ljava/lang/Void;
    .registers 2

    .line 2
    invoke-virtual {p1}, Lja/d0;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
