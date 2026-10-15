###### Class com.facebook.share.internal.GameRequestValidation (com.facebook.share.internal.GameRequestValidation)
.class public Lcom/facebook/share/internal/GameRequestValidation;
.super Ljava/lang/Object;
.source "GameRequestValidation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Lcom/facebook/share/model/GameRequestContent;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getObjectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 3
    :goto_14
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    if-eq v3, v4, :cond_27

    .line 4
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    if-ne v3, v4, :cond_25

    goto :goto_27

    :cond_25
    const/4 v3, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v3, 0x1

    :goto_28
    xor-int/2addr v0, v3

    if-nez v0, :cond_4d

    .line 5
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getRecipients()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    .line 6
    :cond_32
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getSuggestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3a

    add-int/lit8 v1, v1, 0x1

    .line 7
    :cond_3a
    invoke-virtual {p0}, Lcom/facebook/share/model/GameRequestContent;->getFilters()Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object p0

    if-eqz p0, :cond_42

    add-int/lit8 v1, v1, 0x1

    :cond_42
    if-gt v1, v2, :cond_45

    return-void

    .line 8
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameters to, filters and suggestions are mutually exclusive"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object id should be provided if and only if action type is send or askfor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
