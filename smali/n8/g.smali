###### Class n8.g (n8.g)
.class public Ln8/g;
.super Ljava/lang/Object;
.source "TGDataTypeConverter.java"


# static fields
.field private static a:Lcom/google/gson/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    sput-object v0, Ln8/g;->a:Lcom/google/gson/f;

    return-void
.end method

.method public static a(Lcom/tebakgambar/model/ComingSoon;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Ln8/g;->a:Lcom/google/gson/f;

    invoke-virtual {v0, p0}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([I)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Ln8/g;->a:Lcom/google/gson/f;

    invoke-virtual {v0, p0}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Slider$Image;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln8/g;->a:Lcom/google/gson/f;

    invoke-virtual {v0, p0}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/sticker/model/Sticker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln8/g;->a:Lcom/google/gson/f;

    invoke-virtual {v0, p0}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/tebakgambar/model/ComingSoon;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    sget-object v0, Ln8/g;->a:Lcom/google/gson/f;

    const-class v1, Lcom/tebakgambar/model/ComingSoon;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tebakgambar/model/ComingSoon;

    return-object p0
.end method

.method public static f(Ljava/lang/String;)[I
    .registers 3

    if-nez p0, :cond_6

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    .line 1
    :cond_6
    sget-object v0, Ln8/g;->a:Lcom/google/gson/f;

    const-class v1, [I

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Slider$Image;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln8/g$a;

    invoke-direct {v0}, Ln8/g$a;-><init>()V

    .line 2
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    sget-object v1, Ln8/g;->a:Lcom/google/gson/f;

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/tebakgambar/sticker/model/Sticker;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln8/g$b;

    invoke-direct {v0}, Ln8/g$b;-><init>()V

    .line 2
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    sget-object v1, Ln8/g;->a:Lcom/google/gson/f;

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

###### Class n8.g.a (n8.g$a)
.class Ln8/g$a;
.super Lg7/a;
.source "TGDataTypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8/g;->g(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/List<",
        "Lcom/tebakgambar/model/Slider$Image;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class n8.g.b (n8.g$b)
.class Ln8/g$b;
.super Lg7/a;
.source "TGDataTypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln8/g;->h(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/List<",
        "Lcom/tebakgambar/sticker/model/Sticker;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method
