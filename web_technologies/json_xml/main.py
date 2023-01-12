import json
from dict2xml import dict2xml
from xml.etree import ElementTree

FILE = 'users'


def main():
    users = create_dict()
    create_json_file(users)
    create_xml_file(users)


def create_dict():
    user = [{
        'name': 'Иван',
        'surname': 'Иванов',
        'patronymic': 'Иванович',
        'age': 30,
        'birthplace': 'Москва',
        'phone': '+7 926 766 48 48'
    }]
    return user


def create_xml_file(users: list) -> None:
    xml = dict2xml(users, wrap='user', indent='\t')
    print(xml)
    xml = f'<users>\n{xml}\n</users>'
    with open(f'{FILE}.xml', 'w', encoding='utf-8') as ouf:
        ouf.write(xml)
    change_xml_tree()


def change_xml_tree():
    tree = ElementTree.parse(f'{FILE}.xml')
    tree.write(f'{FILE}.xml', encoding='utf-8', xml_declaration=True)


def create_json_file(users: list) -> None:
    with open(f'{FILE}.json', 'w', encoding='utf-8') as ouf:
        json.dump(users, ouf)


if __name__ == '__main__':
    main()
