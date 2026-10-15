###### Class d7.h (d7.h)
.class public final Ld7/h;
.super Lcom/google/gson/w;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/gson/x;


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ld7/h$a;

    invoke-direct {v0}, Ld7/h$a;-><init>()V

    sput-object v0, Ld7/h;->b:Lcom/google/gson/x;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    .line 2
    iput-object p1, p0, Ld7/h;->a:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public b(Lh7/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lh7/a;->x()Lh7/b;

    move-result-object v0

    .line 2
    sget-object v1, Ld7/h$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :pswitch_15
    invoke-virtual {p1}, Lh7/a;->t()V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :pswitch_1a
    invoke-virtual {p1}, Lh7/a;->n()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_23
    invoke-virtual {p1}, Lh7/a;->o()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_2c
    invoke-virtual {p1}, Lh7/a;->v()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_31
    new-instance v0, Lc7/h;

    invoke-direct {v0}, Lc7/h;-><init>()V

    .line 9
    invoke-virtual {p1}, Lh7/a;->c()V

    .line 10
    :goto_39
    invoke-virtual {p1}, Lh7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 11
    invoke-virtual {p1}, Lh7/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Ld7/h;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 12
    :cond_4b
    invoke-virtual {p1}, Lh7/a;->h()V

    return-object v0

    .line 13
    :pswitch_4f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, Lh7/a;->b()V

    .line 15
    :goto_57
    invoke-virtual {p1}, Lh7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 16
    invoke-virtual {p0, p1}, Ld7/h;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 17
    :cond_65
    invoke-virtual {p1}, Lh7/a;->g()V

    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_31
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public d(Lh7/c;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 1
    invoke-virtual {p1}, Lh7/c;->n()Lh7/c;

    return-void

    .line 2
    :cond_6
    iget-object v0, p0, Ld7/h;->a:Lcom/google/gson/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->n(Ljava/lang/Class;)Lcom/google/gson/w;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ld7/h;

    if-eqz v1, :cond_1b

    .line 4
    invoke-virtual {p1}, Lh7/c;->e()Lh7/c;

    .line 5
    invoke-virtual {p1}, Lh7/c;->h()Lh7/c;

    return-void

    .line 6
    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    return-void
.end method

###### Class d7.h.a (d7.h$a)
.class Ld7/h$a;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/f;Lg7/a;)Lcom/google/gson/w;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lg7/a<",
            "TT;>;)",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lg7/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_e

    .line 2
    new-instance p2, Ld7/h;

    invoke-direct {p2, p1}, Ld7/h;-><init>(Lcom/google/gson/f;)V

    return-object p2

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

###### Class d7.h.b (d7.h$b)
.class synthetic Ld7/h$b;
.super Ljava/lang/Object;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lh7/b;->values()[Lh7/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ld7/h$b;->a:[I

    :try_start_9
    sget-object v1, Lh7/b;->o:Lh7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Ld7/h$b;->a:[I

    sget-object v1, Lh7/b;->q:Lh7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Ld7/h$b;->a:[I

    sget-object v1, Lh7/b;->t:Lh7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Ld7/h$b;->a:[I

    sget-object v1, Lh7/b;->u:Lh7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Ld7/h$b;->a:[I

    sget-object v1, Lh7/b;->v:Lh7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Ld7/h$b;->a:[I

    sget-object v1, Lh7/b;->w:Lh7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
