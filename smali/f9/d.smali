###### Class f9.d (f9.d)
.class public Lf9/d;
.super Ljava/lang/Object;
.source "BindingValuesAdapter.java"

# interfaces
.implements Lcom/google/gson/t;
.implements Lcom/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/t<",
        "Lf9/c;",
        ">;",
        "Lcom/google/gson/k<",
        "Lf9/c;",
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
.method public bridge synthetic a(Lcom/google/gson/l;Ljava/lang/reflect/Type;Lcom/google/gson/j;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf9/d;->c(Lcom/google/gson/l;Ljava/lang/reflect/Type;Lcom/google/gson/j;)Lf9/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/s;)Lcom/google/gson/l;
    .registers 4

    .line 1
    check-cast p1, Lf9/c;

    invoke-virtual {p0, p1, p2, p3}, Lf9/d;->e(Lf9/c;Ljava/lang/reflect/Type;Lcom/google/gson/s;)Lcom/google/gson/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/gson/l;Ljava/lang/reflect/Type;Lcom/google/gson/j;)Lf9/c;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/l;->r()Z

    move-result p2

    if-nez p2, :cond_c

    .line 2
    new-instance p1, Lf9/c;

    invoke-direct {p1}, Lf9/c;-><init>()V

    return-object p1

    .line 3
    :cond_c
    invoke-virtual {p1}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/o;->y()Ljava/util/Set;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/util/HashMap;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/l;

    invoke-virtual {v0}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0, p3}, Lf9/d;->d(Lcom/google/gson/o;Lcom/google/gson/j;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 11
    :cond_43
    new-instance p1, Lf9/c;

    invoke-direct {p1, p2}, Lf9/c;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method d(Lcom/google/gson/o;Lcom/google/gson/j;)Ljava/lang/Object;
    .registers 7

    const-string v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_84

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/l;->s()Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_84

    .line 3
    :cond_11
    invoke-virtual {v0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_86

    goto :goto_4c

    :sswitch_21
    const-string v3, "BOOLEAN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_4c

    :cond_2a
    const/4 v2, 0x3

    goto :goto_4c

    :sswitch_2c
    const-string v3, "IMAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_4c

    :cond_35
    const/4 v2, 0x2

    goto :goto_4c

    :sswitch_37
    const-string v3, "USER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4c

    :cond_40
    const/4 v2, 0x1

    goto :goto_4c

    :sswitch_42
    const-string v3, "STRING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    packed-switch v2, :pswitch_data_98

    return-object v1

    :pswitch_50
    const-string v0, "boolean_value"

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p1

    const-class v0, Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/j;->a(Lcom/google/gson/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5d
    const-string v0, "image_value"

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p1

    const-class v0, Lf9/h;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/j;->a(Lcom/google/gson/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6a
    const-string v0, "user_value"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p1

    const-class v0, Lf9/r;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/j;->a(Lcom/google/gson/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_77
    const-string v0, "string_value"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/gson/j;->a(Lcom/google/gson/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_84
    :goto_84
    return-object v1

    nop

    :sswitch_data_86
    .sparse-switch
        -0x6d97abef -> :sswitch_42
        0x27e3cb -> :sswitch_37
        0x428b13b -> :sswitch_2c
        0x2ea6f808 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_77
        :pswitch_6a
        :pswitch_5d
        :pswitch_50
    .end packed-switch
.end method

.method public e(Lf9/c;Ljava/lang/reflect/Type;Lcom/google/gson/s;)Lcom/google/gson/l;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method
