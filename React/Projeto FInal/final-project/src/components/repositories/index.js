import React, { useState, useEffect } from "react";
import useGithub from "../../hooks/github-hooks";
import RepositoryItem from "../repository-item";
import * as S from "./styled";

const Repositories = () => {
    const { githubState, getUserRepos, getUserStarred } = useGithub();
    const [hasUserForSearchrepos, setHasUserForSearchrepos] = useState(false);

    useEffect(() => {
        if (githubState.user.login) {
            getUserRepos(githubState.user.login);
            getUserStarred(githubState.user.login);
        }
        setHasUserForSearchrepos(githubState.repositories);

    }, [githubState.user.login]);

    return (
        <>
            {hasUserForSearchrepos ? (
                <S.WrapperTabs selectedTabClassName="is-selected" selectedTabPanelClassName="is-selected">
                    <S.WrapperTab>Repositories</S.WrapperTab>
                    <S.WrapperTab>Starred</S.WrapperTab>
                    <S.WrapperTabList>
                        <S.WrapperTabPanel>
                            <S.WrapperList>
                                {githubState.repositories.map((item) => (
                                    <RepositoryItem key={item.id} name={item.name} linkToRepo={item.full_name} fullName={item.full_name} />
                                ))}
                            </S.WrapperList>
                        </S.WrapperTabPanel>
                        <S.WrapperTabPanel>
                            <S.WrapperList>
                                {githubState.starred.map((item) => (
                                    <RepositoryItem key={item.id} name={item.name} linkToRepo={item.full_name} fullName={item.full_name} />
                                ))}
                            </S.WrapperList>
                        </S.WrapperTabPanel>
                    </S.WrapperTabList>
                </S.WrapperTabs>
            ) : (
                <></>
            )}
        </>
    );
};

export default Repositories;